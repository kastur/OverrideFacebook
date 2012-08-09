.class public Lcom/facebook/orca/photos/sizing/GraphicSizer;
.super Ljava/lang/Object;
.source "GraphicSizer.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(II)V

    .line 30
    return-void
.end method

.method private a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;-><init>(Landroid/graphics/RectF;F)V

    .line 82
    invoke-virtual {v1, p2}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 83
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v4

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 90
    if-le v0, v1, :cond_3

    .line 91
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 100
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    :goto_1
    return-object p2

    .line 91
    :cond_2
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_2
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 112
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_4
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_2
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:Ljava/util/List;

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    return-void
.end method

.method private b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 122
    new-instance v0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;-><init>(II)V

    .line 125
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-object p2
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicOp;

    .line 35
    invoke-interface {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_0
    return-object p1
.end method
