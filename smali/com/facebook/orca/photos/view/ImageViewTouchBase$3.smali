.class Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:J

.field private synthetic c:F

.field private synthetic d:F

.field private synthetic e:F

.field private synthetic f:F

.field private synthetic g:Lcom/facebook/orca/photos/view/ImageViewTouchBase;


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 434
    iget v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->a:F

    iget-wide v3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 435
    iget v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->c:F

    iget v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 436
    iget-object v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->g:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    iget v3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->e:F

    iget v4, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(FFF)V

    .line 438
    iget v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$3;->g:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    iget-object v0, v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_0
    return-void
.end method
