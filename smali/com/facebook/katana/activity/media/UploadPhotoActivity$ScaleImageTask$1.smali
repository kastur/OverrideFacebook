.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->b(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    :goto_0
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    iget-object v2, v2, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->b:Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->c(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$SaveImageTask;->start()V

    .line 156
    :cond_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
