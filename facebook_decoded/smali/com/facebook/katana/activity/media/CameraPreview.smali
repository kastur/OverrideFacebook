.class public Lcom/facebook/katana/activity/media/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Landroid/hardware/Camera;

.field private c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

.field private d:Lcom/facebook/katana/activity/media/FocusManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;Lcom/facebook/katana/activity/media/FocusManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    .line 36
    iput-object p3, p0, Lcom/facebook/katana/activity/media/CameraPreview;->d:Lcom/facebook/katana/activity/media/FocusManager;

    .line 37
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->a:Landroid/view/SurfaceHolder;

    .line 38
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 40
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraPreview;->a:Landroid/view/SurfaceHolder;

    .line 53
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 54
    const-string v1, "CameraPreview"

    const-string v2, "camera was null when the surface was created"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->d:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FocusManager;->d()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->d:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FocusManager;->e()V

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraPreview;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->d:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FocusManager;->c()V

    move v0, v1

    .line 69
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    const-string v0, "CameraPreview"

    const-string v2, "Unable to connect camera live preview to the surface, after surface changed"

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->b:Landroid/hardware/Camera;

    .line 89
    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    .line 90
    return-void
.end method

.method public setSurfaceListener(Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    .line 45
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;->a()V

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraPreview;->a(Landroid/view/SurfaceHolder;)Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraPreview;->c:Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;->a(Z)V

    .line 84
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method
