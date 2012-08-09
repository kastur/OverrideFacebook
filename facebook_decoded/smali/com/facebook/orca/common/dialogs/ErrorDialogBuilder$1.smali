.class Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;
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
    .line 93
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;->a:Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_0
    return-void
.end method
