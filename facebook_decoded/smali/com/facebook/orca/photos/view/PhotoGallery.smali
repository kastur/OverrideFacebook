.class public Lcom/facebook/orca/photos/view/PhotoGallery;
.super Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;
.source "PhotoGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private a:Landroid/view/ScaleGestureDetector;

.field private b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->c:Z

    .line 30
    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->d:Z

    .line 34
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->a:Landroid/view/ScaleGestureDetector;

    .line 35
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 36
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(F)V

    .line 168
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    const/high16 v1, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b(FFF)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-static {p1, p2}, Lcom/facebook/orca/photos/view/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-static {p1, p2}, Lcom/facebook/orca/photos/view/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/orca/photos/view/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const/16 v0, 0x15

    .line 97
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/view/PhotoGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_3
    const/16 v0, 0x16

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a()F

    move-result v1

    mul-float/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(FFF)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a()F

    move-result v0

    const/high16 v1, 0x3fc0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/orca/photos/view/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {p1, p2}, Lcom/facebook/orca/photos/view/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(FF)V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoGallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    invoke-super {p0, p1}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    sget v1, Lcom/facebook/orca/R$id;->photo_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0}, Lcom/facebook/orca/images/UrlImage;->a()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->b:Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoGallery;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-super {p0, p1}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
