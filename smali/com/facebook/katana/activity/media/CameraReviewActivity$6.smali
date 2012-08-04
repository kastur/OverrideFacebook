.class Lcom/facebook/katana/activity/media/CameraReviewActivity$6;
.super Ljava/lang/Object;
.source "CameraReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g()V

    .line 482
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->setResult(I)V

    .line 483
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->finish()V

    .line 484
    return-void
.end method
