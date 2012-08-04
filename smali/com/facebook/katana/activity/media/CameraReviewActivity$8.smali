.class Lcom/facebook/katana/activity/media/CameraReviewActivity$8;
.super Ljava/lang/Object;
.source "CameraReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/FrameLayout;

.field private synthetic b:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 595
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b(Lcom/facebook/katana/model/FacebookPhotoTag;)V

    .line 599
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->p(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    .line 601
    return-void
.end method
