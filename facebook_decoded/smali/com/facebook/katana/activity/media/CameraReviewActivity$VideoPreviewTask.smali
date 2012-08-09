.class Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;
.super Landroid/os/AsyncTask;
.source "CameraReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private synthetic b:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 767
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->a:Landroid/net/Uri;

    .line 768
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/net/Uri;Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 780
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 781
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 782
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->c(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 783
    return-void
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
