.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->b:Landroid/os/Handler;

    .line 266
    iput-object p3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    const/16 v1, 0x3c0

    const/16 v2, 0x3c0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->b:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 291
    const-string v1, "photo_upload"

    const-string v2, "%s upload failure (filename=%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    const-string v1, "LoadImageTask.run"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot load bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
