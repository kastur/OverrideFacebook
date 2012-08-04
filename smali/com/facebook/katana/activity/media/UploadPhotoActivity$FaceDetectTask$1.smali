.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[Landroid/media/FaceDetector$Face;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;[Landroid/media/FaceDetector$Face;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->d:Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->a:[Landroid/media/FaceDetector$Face;

    iput p3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->b:I

    iput p4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->d:Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->d:Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->a:[Landroid/media/FaceDetector$Face;

    iget v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->b:I

    iget v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;[Landroid/media/FaceDetector$Face;II)V

    .line 357
    :cond_0
    return-void
.end method
