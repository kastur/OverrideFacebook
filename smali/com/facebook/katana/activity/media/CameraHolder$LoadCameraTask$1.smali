.class Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;->a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;->a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->h(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;->a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->h(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;->a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->h(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;->a:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->h(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 482
    :cond_0
    return-void
.end method
