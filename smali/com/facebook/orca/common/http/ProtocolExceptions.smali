.class public Lcom/facebook/orca/common/http/ProtocolExceptions;
.super Ljava/lang/Object;
.source "ProtocolExceptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lcom/facebook/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/HttpResponseException;->a()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lcom/facebook/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/HttpResponseException;->a()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/HttpResponseException;->a()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->e(Ljava/lang/Throwable;)Lcom/facebook/apache/http/client/HttpResponseException;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/HttpResponseException;->a()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/HttpResponseException;->a()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 32
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Ljava/lang/Throwable;)Lcom/facebook/apache/http/client/HttpResponseException;
    .locals 2
    .parameter

    .prologue
    .line 41
    move-object v0, p0

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/facebook/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lcom/facebook/apache/http/client/HttpResponseException;

    .line 48
    :goto_1
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
