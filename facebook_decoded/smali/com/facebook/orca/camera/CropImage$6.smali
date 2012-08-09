.class Lcom/facebook/orca/camera/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:[Landroid/media/FaceDetector$Face;

.field b:I

.field final synthetic c:Lcom/facebook/orca/camera/CropImage;

.field private d:F

.field private e:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    .line 418
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->a:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 468
    new-instance v0, Lcom/facebook/orca/camera/HighlightView;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 470
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 471
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 473
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v1, 0x5

    .line 479
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    .line 481
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v3

    .line 487
    :goto_0
    sub-int v3, v6, v4

    div-int/lit8 v6, v3, 0x2

    .line 488
    sub-int v3, v7, v1

    div-int/lit8 v7, v3, 0x2

    .line 490
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v7

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-direct {v3, v8, v9, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 491
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->f(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v4

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/camera/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 493
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/camera/CropImageView;->a(Lcom/facebook/orca/camera/HighlightView;)V

    .line 494
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    move v4, v3

    goto :goto_0
.end method

.method private a(Landroid/media/FaceDetector$Face;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 423
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 425
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x1

    .line 426
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 427
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 428
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 430
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v2

    .line 431
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    .line 433
    new-instance v0, Lcom/facebook/orca/camera/HighlightView;

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 435
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 436
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 440
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v6

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-direct {v3, v7, v8, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 441
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 442
    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    .line 443
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 446
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    .line 447
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 450
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 451
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 455
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 456
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->f(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v4

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/camera/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 463
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/camera/CropImageView;->a(Lcom/facebook/orca/camera/HighlightView;)V

    .line 464
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage$6;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage$6;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage$6;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImage$6;->a(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 504
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    .line 506
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    iget v0, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 508
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Landroid/graphics/Matrix;

    .line 515
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage$6;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/camera/CropImage$6;->d:F

    .line 518
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->i(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->a:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 521
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->a:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/camera/CropImage$6;->b:I

    .line 524
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->e(Lcom/facebook/orca/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/camera/CropImage$6$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/camera/CropImage$6$1;-><init>(Lcom/facebook/orca/camera/CropImage$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    return-void
.end method
