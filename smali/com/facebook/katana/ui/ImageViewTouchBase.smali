.class public Lcom/facebook/katana/ui/ImageViewTouchBase;
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

.field private f:Lcom/facebook/katana/RotateBitmap;

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private k:Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    const/high16 v0, 0x3f80

    sput v0, Lcom/facebook/katana/ui/ImageViewTouchBase;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 268
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->e:[F

    .line 58
    new-instance v0, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    .line 61
    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->h:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    .line 65
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 141
    iput-object v2, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 269
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->e:[F

    .line 58
    new-instance v0, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    .line 61
    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->h:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    .line 65
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 141
    iput-object v2, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 280
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
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

    .line 291
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->e:[F

    .line 58
    new-instance v0, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    .line 61
    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->h:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    .line 65
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->a:Landroid/os/Handler;

    .line 141
    iput-object v2, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 292
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 293
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->e:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 297
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->e:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/RotateBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/facebook/katana/RotateBitmap;->a(I)V

    .line 132
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->k:Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->k:Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;

    invoke-interface {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;->a()V

    .line 135
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/katana/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4120

    const/high16 v6, 0x4000

    .line 322
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 323
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 325
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->e()I

    move-result v2

    int-to-float v2, v2

    .line 326
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->d()I

    move-result v3

    int-to-float v3, v3

    .line 328
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 330
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->c()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 331
    iget-boolean v4, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    if-eqz v4, :cond_0

    .line 334
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 335
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 336
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 337
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 338
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 344
    :goto_0
    return-void

    .line 342
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

    .line 217
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    .line 223
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 229
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 230
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 234
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 236
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 237
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 245
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 247
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 248
    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 256
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

    .line 258
    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b(FF)V

    .line 259
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 238
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 239
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 240
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 249
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 250
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 251
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 252
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
    .line 379
    .line 380
    iget v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 381
    iget p1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    .line 385
    :cond_0
    :goto_0
    return p1

    .line 382
    :cond_1
    sget v0, Lcom/facebook/katana/ui/ImageViewTouchBase;->m:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 383
    sget p1, Lcom/facebook/katana/ui/ImageViewTouchBase;->m:F

    goto :goto_0
.end method

.method private b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 492
    return-void
.end method

.method private c(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b(FF)V

    .line 496
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 497
    return-void
.end method

.method private e()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 352
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private f()F
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    const/high16 v0, 0x3f80

    .line 370
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/katana/RotateBitmap;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 370
    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 438
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 439
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 441
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(FFF)V

    .line 442
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b(FF)V

    .line 308
    invoke-direct {p0, v0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(ZZ)V

    .line 309
    return-void
.end method

.method public final a(FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 393
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->b(F)F

    move-result v0

    .line 395
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a()F

    move-result v1

    .line 396
    div-float/2addr v0, v1

    .line 397
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

    .line 399
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 400
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 401
    invoke-direct {p0, v4, v4}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(ZZ)V

    .line 402
    return-void
.end method

.method public final b()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 515
    :goto_0
    return v0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v1

    .line 510
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 514
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 515
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

    .line 445
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 446
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 448
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/ui/ImageViewTouchBase;->c(FF)V

    .line 449
    const/high16 v2, 0x4040

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(FFF)V

    .line 450
    return-void
.end method

.method public final c()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 530
    :goto_0
    return v0

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v1

    .line 525
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 529
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 530
    iget v0, v2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 534
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 545
    :goto_0
    return-object v0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v1

    .line 540
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v2}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 544
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

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
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 95
    sub-int v0, p4, p2

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->g:I

    .line 96
    sub-int v0, p5, p3

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->h:I

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 98
    if-eqz v0, :cond_1

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 102
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->f:Lcom/facebook/katana/RotateBitmap;

    iget-object v1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Lcom/facebook/katana/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 106
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 119
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    .line 148
    return-void
.end method

.method public setImageBitmapResetBaseNoScale(Lcom/facebook/katana/RotateBitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    .line 155
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 156
    if-gtz v0, :cond_0

    .line 157
    new-instance v0, Lcom/facebook/katana/ui/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/katana/ui/ImageViewTouchBase$1;-><init>(Lcom/facebook/katana/ui/ImageViewTouchBase;Lcom/facebook/katana/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 180
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Lcom/facebook/katana/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 169
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 175
    :goto_1
    if-eqz p2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 179
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->f()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 409
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 410
    instance-of v1, v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    if-eqz v1, :cond_0

    .line 411
    check-cast v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->h()V

    .line 413
    :cond_0
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->i:Z

    .line 184
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 185
    if-gtz v0, :cond_0

    .line 186
    new-instance v0, Lcom/facebook/katana/ui/ImageViewTouchBase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/katana/ui/ImageViewTouchBase$2;-><init>(Lcom/facebook/katana/ui/ImageViewTouchBase;Lcom/facebook/katana/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->l:Ljava/lang/Runnable;

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Lcom/facebook/katana/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 198
    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/katana/RotateBitmap;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 204
    :goto_1
    if-eqz p2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 208
    invoke-direct {p0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->f()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->j:F

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/katana/ui/ImageViewTouchBase;->k:Lcom/facebook/katana/ui/ImageViewTouchBase$Recycler;

    .line 89
    return-void
.end method
