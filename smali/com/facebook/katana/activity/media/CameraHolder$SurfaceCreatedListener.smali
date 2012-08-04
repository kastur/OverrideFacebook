.class Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;
.super Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;
.source "CameraHolder.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraHolder;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Lcom/facebook/katana/activity/media/CameraHolder;Z)Z

    .line 407
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->f(Lcom/facebook/katana/activity/media/CameraHolder;)V

    .line 396
    :cond_0
    return-void
.end method
