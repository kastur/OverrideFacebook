.class Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;
.super Ljava/lang/Object;
.source "ChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/dialogs/ChoiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-static {v0, p1}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a(Lcom/facebook/orca/common/dialogs/ChoiceDialog;Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->dismiss()V

    .line 59
    return-void
.end method
