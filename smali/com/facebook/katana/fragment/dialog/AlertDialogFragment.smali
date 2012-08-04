.class public Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static d(I)Landroid/support/v4/app/DialogFragment;
    .locals 4
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v2, "message_res_id"

    const v3, 0x7f0b0359

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;->e(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment$1;-><init>(Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
