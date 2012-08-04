.class abstract Lcom/facebook/orca/camera/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field protected final b:Lcom/facebook/orca/camera/RotateBitmap;

.field protected c:Landroid/os/Handler;

.field private d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Matrix;

.field private final f:[F

.field private g:I

.field private h:I

.field private i:F

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->f:[F

    .line 58
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->g:I

    iput v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->h:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->c:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->j:Ljava/lang/Runnable;

    .line 240
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->c()V

    .line 241
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->f:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 344
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 345
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 347
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(FFF)V

    .line 348
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/camera/RotateBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/camera/RotateBitmap;->a(I)V

    .line 138
    return-void
.end method

.method private a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    .line 263
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 264
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 266
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->e()I

    move-result v2

    int-to-float v2, v2

    .line 267
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->d()I

    move-result v3

    int-to-float v3, v3

    .line 268
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 276
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 277
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    return-void
.end method

.method private d()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->e:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private e()F
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    const/high16 v0, 0x3f80

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 305
    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/facebook/orca/camera/RotateBitmap;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 307
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    .line 145
    return-void
.end method

.method protected a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 404
    return-void
.end method

.method protected a(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 311
    iget v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->i:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 312
    iget p1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->i:F

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->b()F

    move-result v0

    .line 316
    div-float v0, p1, v0

    .line 318
    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 319
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 320
    invoke-virtual {p0, v2, v2}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(ZZ)V

    .line 321
    return-void
.end method

.method protected final a(FFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4396

    .line 325
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->b()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, v2

    .line 326
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->b()F

    move-result v5

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 329
    iget-object v9, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->c:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/orca/camera/ImageViewTouchBase$2;

    move-object v1, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/camera/ImageViewTouchBase$2;-><init>(Lcom/facebook/orca/camera/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/orca/camera/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/facebook/orca/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public final a(Lcom/facebook/orca/camera/RotateBitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 160
    if-gtz v0, :cond_0

    .line 161
    new-instance v0, Lcom/facebook/orca/camera/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/camera/ImageViewTouchBase$1;-><init>(Lcom/facebook/orca/camera/ImageViewTouchBase;Lcom/facebook/orca/camera/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->j:Ljava/lang/Runnable;

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 171
    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/camera/RotateBitmap;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 177
    :goto_1
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->e()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->i:F

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected final a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    .line 196
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v4}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 203
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 207
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 209
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 210
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 218
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 220
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 221
    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 229
    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(FF)V

    .line 230
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 211
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 212
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 213
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 214
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 222
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 223
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 224
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 225
    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final b()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->d:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected final b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(FF)V

    .line 408
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 409
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 110
    invoke-direct {p0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(F)V

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

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
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    sub-int v0, p4, p2

    iput v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->g:I

    .line 81
    sub-int v0, p5, p3

    iput v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->h:I

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->j:Ljava/lang/Runnable;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->j:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->b:Lcom/facebook/orca/camera/RotateBitmap;

    iget-object v1, p0, Lcom/facebook/orca/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Lcom/facebook/orca/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method
