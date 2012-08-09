.class public Lcom/facebook/orca/photos/view/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# static fields
.field private static m:F


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Matrix;

.field private final e:[F

.field private f:Lcom/facebook/orca/camera/RotateBitmap;

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private k:Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    const/high16 v0, 0x3f80

    sput v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 289
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e:[F

    .line 64
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    .line 67
    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->h:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    .line 71
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 290
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e:[F

    .line 64
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    .line 67
    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->h:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    .line 71
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 301
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e:[F

    .line 64
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    .line 67
    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->h:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    .line 71
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 313
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 314
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/camera/RotateBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/facebook/orca/camera/RotateBitmap;->a(I)V

    .line 138
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->k:Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->k:Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;

    invoke-interface {v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;->a()V

    .line 141
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4120

    const/high16 v6, 0x4000

    .line 343
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 344
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 346
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->e()I

    move-result v2

    int-to-float v2, v2

    .line 347
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->d()I

    move-result v3

    int-to-float v3, v3

    .line 349
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 351
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->c()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 352
    iget-boolean v4, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    if-eqz v4, :cond_0

    .line 355
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 356
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 357
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 358
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 359
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    .line 244
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 250
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 251
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 255
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 257
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 258
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 266
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 268
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 269
    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 277
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "center() delta: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b(FF)V

    .line 280
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 259
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 260
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 261
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 270
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 271
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 272
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 273
    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private b(F)F
    .locals 1
    .parameter

    .prologue
    .line 400
    .line 401
    iget v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 402
    iget p1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    .line 406
    :cond_0
    :goto_0
    return p1

    .line 403
    :cond_1
    sget v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->m:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 404
    sget p1, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->m:F

    goto :goto_0
.end method

.method private b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 500
    return-void
.end method

.method private c(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b(FF)V

    .line 504
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 505
    return-void
.end method

.method private d()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private e()F
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    const/high16 v0, 0x3f80

    .line 391
    :goto_0
    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 388
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/orca/camera/RotateBitmap;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 391
    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 446
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 447
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 449
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(FFF)V

    .line 450
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b(FF)V

    .line 329
    invoke-direct {p0, v0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(ZZ)V

    .line 330
    return-void
.end method

.method public final a(FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 413
    invoke-direct {p0, p1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b(F)F

    move-result v0

    .line 415
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a()F

    move-result v1

    .line 416
    div-float/2addr v0, v1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Old scale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 420
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 421
    invoke-direct {p0, v4, v4}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(ZZ)V

    .line 422
    return-void
.end method

.method public final b()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 523
    :goto_0
    return v0

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v1

    .line 518
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 522
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 523
    iget v0, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final b(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 453
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 454
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 456
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c(FF)V

    .line 457
    const/high16 v2, 0x4040

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(FFF)V

    .line 458
    return-void
.end method

.method public final c()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return v0

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v1

    .line 533
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 537
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 538
    iget v0, v2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 102
    sub-int v0, p4, p2

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->g:I

    .line 103
    sub-int v0, p5, p3

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->h:I

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 105
    if-eqz v0, :cond_1

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 108
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->f:Lcom/facebook/orca/camera/RotateBitmap;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/orca/camera/RotateBitmap;Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/orca/camera/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public setImageBitmapResetBaseNoScale(Lcom/facebook/orca/camera/RotateBitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    .line 161
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 162
    if-gtz v0, :cond_0

    .line 163
    new-instance v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase$1;-><init>(Lcom/facebook/orca/photos/view/ImageViewTouchBase;Lcom/facebook/orca/camera/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 186
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 175
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 181
    :goto_1
    if-eqz p2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setImageRotateBitmapResetBase(Lcom/facebook/orca/camera/RotateBitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->i:Z

    .line 205
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 206
    if-gtz v0, :cond_0

    .line 207
    new-instance v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/photos/view/ImageViewTouchBase$2;-><init>(Lcom/facebook/orca/photos/view/ImageViewTouchBase;Lcom/facebook/orca/camera/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 219
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 225
    :goto_1
    if-eqz p2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 229
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->e()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->j:F

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->k:Lcom/facebook/orca/photos/view/ImageViewTouchBase$Recycler;

    .line 96
    return-void
.end method
