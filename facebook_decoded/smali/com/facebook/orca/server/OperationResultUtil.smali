.class public Lcom/facebook/orca/server/OperationResultUtil;
.super Ljava/lang/Object;
.source "OperationResultUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object p0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    :goto_0
    return-object p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method
