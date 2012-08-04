.class public Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;
.super Landroid/os/AsyncTask;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/CameraHolder;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 420
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->b:I

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->c:I

    .line 425
    return-void
.end method

.method private constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 420
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->b:I

    .line 429
    iput p2, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->c:I

    .line 430
    return-void
.end method

.method private varargs a()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraHolder;->g(Lcom/facebook/katana/activity/media/CameraHolder;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/hardware/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 456
    :cond_0
    return-void
.end method

.method private b(Landroid/hardware/Camera;)V
    .locals 4
    .parameter

    .prologue
    .line 462
    if-nez p1, :cond_1

    .line 463
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->c:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->d(Z)V

    .line 494
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    iget v3, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;I)V

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    .line 471
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 472
    new-instance v1, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask$1;-><init>(Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;)V

    iget v2, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;Landroid/hardware/Camera;)V

    .line 489
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->h()Lcom/facebook/katana/activity/media/CameraPreview;

    .line 490
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->i(Lcom/facebook/katana/activity/media/CameraHolder;)V

    .line 491
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->j(Lcom/facebook/katana/activity/media/CameraHolder;)V

    .line 492
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    .line 493
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->d(Lcom/facebook/katana/activity/media/CameraHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    check-cast p1, Landroid/hardware/Camera;

    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a(Landroid/hardware/Camera;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    check-cast p1, Landroid/hardware/Camera;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->b(Landroid/hardware/Camera;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->j()V

    .line 436
    const-string v0, "CameraHolder"

    const-string v1, "Starting to load camera"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->d(Lcom/facebook/katana/activity/media/CameraHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b()V

    .line 439
    return-void
.end method
