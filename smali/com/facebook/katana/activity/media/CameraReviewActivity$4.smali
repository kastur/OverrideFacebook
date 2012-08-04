.class Lcom/facebook/katana/activity/media/CameraReviewActivity$4;
.super Ljava/lang/Object;
.source "CameraReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 451
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->d()V

    .line 453
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 455
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->c(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
