.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/graphics/Bitmap;

.field private final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->b:Landroid/os/Handler;

    .line 195
    iput-object p3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->c:Landroid/graphics/Bitmap;

    .line 196
    iput-object p4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->d:Landroid/net/Uri;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->d:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 210
    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->c:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 211
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->b:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;

    invoke-direct {v3, p0, v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->c:Landroid/graphics/Bitmap;

    .line 231
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 233
    const-string v2, "photo_upload"

    const-string v3, "%s upload failure (filen=%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    const-string v1, "SaveImageTask.run"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$2;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
