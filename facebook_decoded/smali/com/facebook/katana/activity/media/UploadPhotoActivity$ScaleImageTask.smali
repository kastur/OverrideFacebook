.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/net/Uri;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->b:Landroid/os/Handler;

    .line 134
    iput-object p3, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->c:Landroid/net/Uri;

    .line 135
    iput-boolean p4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->d:Z

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->c:Landroid/net/Uri;

    const/16 v2, 0x3c0

    const/16 v3, 0x3c0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->b:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "photo_upload"

    const-string v2, "%s upload failure (filename=%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->c:Landroid/net/Uri;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const-string v1, "ScaleImageTask.run"

    const-string v2, "upload failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask$2;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
