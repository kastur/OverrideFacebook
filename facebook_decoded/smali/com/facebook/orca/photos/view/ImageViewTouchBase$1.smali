.class Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/camera/RotateBitmap;

.field private synthetic b:Z

.field private synthetic c:Lcom/facebook/orca/photos/view/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/view/ImageViewTouchBase;Lcom/facebook/orca/camera/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->c:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    iput-object p2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->a:Lcom/facebook/orca/camera/RotateBitmap;

    iput-boolean p3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->c:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->a:Lcom/facebook/orca/camera/RotateBitmap;

    iget-boolean v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageBitmapResetBaseNoScale(Lcom/facebook/orca/camera/RotateBitmap;Z)V

    .line 167
    return-void
.end method
