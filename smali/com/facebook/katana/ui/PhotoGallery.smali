.class public Lcom/facebook/katana/ui/PhotoGallery;
.super Lcustom/android/Gallery;
.source "PhotoGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private v:Lcustom/android/ScaleGestureDetector;

.field private w:Lcom/facebook/katana/ui/ImageViewTouchBase;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcustom/android/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->x:Z

    .line 29
    iput-boolean v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    .line 34
    new-instance v0, Lcustom/android/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Lcustom/android/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->v:Lcustom/android/ScaleGestureDetector;

    .line 35
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 36
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/PhotoGallery;->setSpacing(I)V

    .line 37
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
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
.method public final a(Z)Lcom/facebook/katana/ui/PhotoGallery;
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    .line 51
    return-object p0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcustom/android/ScaleGestureDetector;)Z
    .locals 4
    .parameter

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcustom/android/ScaleGestureDetector;->d()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a()F

    move-result v1

    mul-float/2addr v0, v1

    .line 143
    iget-object v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {p1}, Lcustom/android/ScaleGestureDetector;->b()F

    move-result v2

    invoke-virtual {p1}, Lcustom/android/ScaleGestureDetector;->c()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(FFF)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(F)V

    .line 177
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    const/high16 v1, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b(FFF)V

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
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

    .line 80
    iget-boolean v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {p1, p2}, Lcom/facebook/katana/ui/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->c()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-static {p1, p2}, Lcom/facebook/katana/ui/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :cond_3
    invoke-static {p1, p2}, Lcom/facebook/katana/ui/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    const/16 v0, 0x15

    .line 103
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_4
    const/16 v0, 0x16

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a()F

    move-result v0

    const/high16 v1, 0x3fc0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/facebook/katana/ui/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-static {p1, p2}, Lcom/facebook/katana/ui/PhotoGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(FF)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcustom/android/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-boolean v1, p0, Lcom/facebook/katana/ui/PhotoGallery;->y:Z

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/ui/PhotoGallery;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/facebook/katana/ui/PhotoGallery;->f()Landroid/view/View;

    move-result-object v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    invoke-super {p0, p1}, Lcustom/android/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_2
    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ImageViewTouchBase;

    iput-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->w:Lcom/facebook/katana/ui/ImageViewTouchBase;

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 127
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->v:Lcustom/android/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcustom/android/ScaleGestureDetector;->a(Landroid/view/MotionEvent;)Z

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/ui/PhotoGallery;->v:Lcustom/android/ScaleGestureDetector;

    invoke-virtual {v0}, Lcustom/android/ScaleGestureDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :cond_3
    invoke-super {p0, p1}, Lcustom/android/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
