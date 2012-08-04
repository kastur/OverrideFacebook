.class Lcom/facebook/katana/ComposerActivity$3;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->k(Lcom/facebook/katana/ComposerActivity;)V

    .line 722
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->h(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b01c4

    .line 727
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 728
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 734
    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/ComposerActivity$3$2;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$3$2;-><init>(Lcom/facebook/katana/ComposerActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01b0

    new-instance v2, Lcom/facebook/katana/ComposerActivity$3$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$3$1;-><init>(Lcom/facebook/katana/ComposerActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 757
    :goto_2
    return-void

    .line 723
    :cond_0
    const v0, 0x7f0b01c3

    goto :goto_0

    .line 732
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    const/16 v2, 0x7b

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
