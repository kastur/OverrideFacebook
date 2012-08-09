.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask$2;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->showDialog(I)V

    .line 302
    :cond_0
    return-void
.end method
