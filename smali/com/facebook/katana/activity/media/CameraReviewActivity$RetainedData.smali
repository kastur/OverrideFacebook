.class Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;
.super Ljava/lang/Object;
.source "CameraReviewActivity.java"


# instance fields
.field private final a:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

.field private final b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->a:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    .line 875
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->b:Landroid/graphics/PointF;

    .line 876
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;
    .locals 1
    .parameter

    .prologue
    .line 869
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->a:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 869
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->b:Landroid/graphics/PointF;

    return-object v0
.end method
