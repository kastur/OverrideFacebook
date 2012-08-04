.class Lcom/facebook/katana/activity/media/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    const-class v3, Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x53c

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 535
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 536
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->e(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity$7;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraActivity;->e(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;Landroid/view/View;I)V

    goto :goto_0
.end method
