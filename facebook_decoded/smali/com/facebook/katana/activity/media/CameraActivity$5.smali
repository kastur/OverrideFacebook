.class Lcom/facebook/katana/activity/media/CameraActivity$5;
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
    .line 397
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity$5;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$5;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/facebook/katana/activity/media/Storage;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$5;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Lcom/facebook/katana/activity/media/CameraActivity;)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$5;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->e()V

    .line 410
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity$5;->a:Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method
