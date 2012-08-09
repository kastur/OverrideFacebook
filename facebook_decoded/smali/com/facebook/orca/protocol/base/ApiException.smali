.class public Lcom/facebook/orca/protocol/base/ApiException;
.super Ljava/io/IOException;
.source "ApiException.java"

# interfaces
.implements Lcom/facebook/orca/common/base/ExceptionWithExtraData;


# instance fields
.field private final a:Lcom/facebook/orca/protocol/base/ApiErrorResult;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ApiException;->a:Lcom/facebook/orca/protocol/base/ApiErrorResult;

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiException;->b()Lcom/facebook/orca/protocol/base/ApiErrorResult;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/protocol/base/ApiErrorResult;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiException;->a:Lcom/facebook/orca/protocol/base/ApiErrorResult;

    return-object v0
.end method
