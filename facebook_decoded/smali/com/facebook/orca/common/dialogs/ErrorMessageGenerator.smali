.class public Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;
.super Ljava/lang/Object;
.source "ErrorMessageGenerator.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    if-ne v1, v2, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    .line 29
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->b()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->generic_error_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_1
    return-object v0

    .line 30
    :cond_2
    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    if-ne v1, v2, :cond_0

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->network_error_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
