.class public Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;
.super Ljava/lang/Object;
.source "CropRectGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    .line 20
    iput p2, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    .line 21
    return-void
.end method

.method private a(II)Landroid/graphics/Rect;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 48
    int-to-float v0, p1

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 49
    int-to-float v1, p1

    iget-object v2, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 50
    int-to-float v2, p2

    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 51
    int-to-float v3, p2

    iget-object v4, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 53
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    iget v5, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 56
    iget v6, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 59
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v0, v1

    .line 60
    div-int/lit8 v1, v1, 0x2

    .line 61
    sub-int v5, v2, v1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 62
    add-int/2addr v1, v3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 65
    if-lez v0, :cond_0

    .line 67
    sub-int v1, v2, v0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 68
    add-int/2addr v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 86
    :cond_0
    :goto_0
    return-object v4

    .line 73
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 74
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v2, v3

    .line 75
    div-int/lit8 v3, v3, 0x2

    .line 76
    sub-int v5, v0, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 77
    add-int/2addr v3, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 79
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    .line 80
    if-lez v2, :cond_0

    .line 81
    sub-int/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 82
    add-int v0, v1, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 32
    if-lez v3, :cond_0

    if-gtz v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 40
    :goto_1
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v4, p1, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p1, v0

    .line 44
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method
