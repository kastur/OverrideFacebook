.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
