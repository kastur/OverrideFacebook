.class public Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;
.super Ljava/lang/Object;
.source "CropRegionGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    cmpl-float v0, p3, v3

    if-ltz v0, :cond_1

    cmpg-float v0, p3, v4

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 37
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    .line 39
    iput p2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b:F

    .line 40
    iput p3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->c:F

    .line 41
    iput-object p4, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 42
    iput p5, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    .line 43
    iput p6, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v1, v2

    .line 36
    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 78
    :goto_0
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 82
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    return-object v0

    .line 76
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 90
    if-le v2, p2, :cond_3

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v3, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v0, v3, :cond_1

    .line 92
    sub-int v0, v2, p2

    .line 93
    div-int/lit8 v0, v0, 0x2

    .line 94
    add-int/2addr p2, v0

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 109
    if-le v2, p3, :cond_5

    .line 110
    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v3, v4, :cond_4

    .line 111
    sub-int v1, v2, p3

    .line 112
    div-int/lit8 v1, v1, 0x2

    .line 113
    add-int/2addr p3, v1

    .line 125
    :cond_0
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v3, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    sub-int v0, v2, p2

    move p2, v2

    .line 100
    goto :goto_0

    :cond_3
    move v0, v1

    move p2, v2

    .line 104
    goto :goto_0

    .line 114
    :cond_4
    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-eq v3, v4, :cond_0

    .line 118
    sub-int v1, v2, p3

    move p3, v2

    .line 119
    goto :goto_1

    :cond_5
    move p3, v2

    .line 123
    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 51
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 52
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 54
    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    if-gt v0, v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object p1

    .line 58
    :cond_1
    int-to-float v2, v1

    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 59
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b:F

    sub-float v3, v4, v3

    float-to-int v3, v3

    mul-int/2addr v0, v3

    .line 60
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_2
    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    if-lt v1, v2, :cond_0

    .line 68
    int-to-float v2, v0

    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 69
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->c:F

    sub-float v3, v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 70
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
