.class public Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;
.super Ljava/lang/Object;
.source "ScaleGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    .line 18
    iput p2, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 25
    if-le v3, v4, :cond_1

    .line 26
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    if-le v3, v0, :cond_2

    .line 27
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    int-to-float v0, v0

    int-to-float v5, v3

    div-float/2addr v0, v5

    .line 36
    :goto_0
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 39
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 43
    :cond_0
    return-object p1

    .line 30
    :cond_1
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    if-le v4, v0, :cond_2

    .line 31
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    int-to-float v0, v0

    int-to-float v5, v4

    div-float/2addr v0, v5

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
