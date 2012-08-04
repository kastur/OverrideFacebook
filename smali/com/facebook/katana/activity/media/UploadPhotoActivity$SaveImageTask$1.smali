.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->b(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->b(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 225
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
