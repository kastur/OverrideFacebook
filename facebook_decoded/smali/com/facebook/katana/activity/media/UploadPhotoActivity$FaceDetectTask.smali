.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 325
    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->b:Landroid/os/Handler;

    .line 326
    iput-object p3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->c:Landroid/graphics/Bitmap;

    .line 327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 335
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->c:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 339
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 346
    :cond_0
    new-instance v3, Landroid/media/FaceDetector;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/media/FaceDetector;-><init>(III)V

    .line 348
    const/16 v4, 0xa

    new-array v4, v4, [Landroid/media/FaceDetector$Face;

    .line 349
    invoke-virtual {v3, v2, v4}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    .line 351
    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->b:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;[Landroid/media/FaceDetector$Face;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method
