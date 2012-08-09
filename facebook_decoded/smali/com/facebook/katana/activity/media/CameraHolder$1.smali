.class Lcom/facebook/katana/activity/media/CameraHolder$1;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraHolder;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraFlash;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Z)V

    .line 285
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->b(Lcom/facebook/katana/activity/media/CameraHolder;)V

    .line 287
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->c(Lcom/facebook/katana/activity/media/CameraHolder;)V

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->d(Lcom/facebook/katana/activity/media/CameraHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->e(Lcom/facebook/katana/activity/media/CameraHolder;)I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v1, v1, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v1, p1, v0}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->a([BI)V

    .line 293
    new-instance v1, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder$1;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {v1, v2, p1, v0}, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;[BI)V

    .line 294
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
