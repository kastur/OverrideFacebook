.class public Lcom/facebook/katana/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 34
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    .line 35
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    .line 39
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    iget v1, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 61
    iget-object v2, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 62
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 63
    iget v1, p0, Lcom/facebook/katana/RotateBitmap;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 64
    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/katana/RotateBitmap;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 66
    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/katana/RotateBitmap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/RotateBitmap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method
