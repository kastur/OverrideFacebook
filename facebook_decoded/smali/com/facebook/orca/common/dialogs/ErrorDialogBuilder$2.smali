.class Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;
.super Ljava/lang/Object;
.source "ErrorDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    :cond_0
    new-instance v0, Lcom/facebook/orca/debug/ErrorReportSender;

    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/debug/ErrorReportSender;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Lcom/facebook/orca/ops/ServiceException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/debug/ErrorReportSender;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 113
    return-void
.end method
