.class public Lcom/facebook/orca/server/ErrorCodeUtil;
.super Ljava/lang/Object;
.source "ErrorCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_AUTHENTICATION:Lcom/facebook/orca/server/ErrorCode;

    .line 22
    :goto_0
    return-object v0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_OTHER:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_500_CLASS:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 17
    :cond_2
    instance-of v0, p0, Lcom/facebook/orca/protocol/base/ApiException;

    if-eqz v0, :cond_3

    .line 18
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 22
    :cond_4
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->OTHER:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0
.end method
