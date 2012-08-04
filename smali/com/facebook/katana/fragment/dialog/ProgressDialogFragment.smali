.class public Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(IZZ)Landroid/support/v4/app/DialogFragment;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "message_res_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v2, "indeterminate"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v2, "cancelable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;->e(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    const-string v1, "message_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 22
    const-string v2, "indeterminate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 23
    const-string v3, "cancelable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 29
    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    return-object v3
.end method
