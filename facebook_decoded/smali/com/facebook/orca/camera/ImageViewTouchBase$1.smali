.class Lcom/facebook/orca/camera/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/camera/RotateBitmap;

.field private synthetic b:Z

.field private synthetic c:Lcom/facebook/orca/camera/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/ImageViewTouchBase;Lcom/facebook/orca/camera/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->c:Lcom/facebook/orca/camera/ImageViewTouchBase;

    iput-object p2, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->a:Lcom/facebook/orca/camera/RotateBitmap;

    iput-boolean p3, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->c:Lcom/facebook/orca/camera/ImageViewTouchBase;

    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->a:Lcom/facebook/orca/camera/RotateBitmap;

    iget-boolean v2, p0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Z)V

    .line 164
    return-void
.end method
