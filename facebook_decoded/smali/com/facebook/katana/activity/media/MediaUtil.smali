.class public Lcom/facebook/katana/activity/media/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-le p0, p2, :cond_0

    .line 41
    :goto_0
    return p2

    .line 40
    :cond_0
    if-gez p0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, p0

    .line 41
    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v4

    .line 62
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v4

    move-object v5, v4

    move v6, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 63
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float v8, v2, v8

    .line 64
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v9

    .line 66
    if-le v2, v6, :cond_2

    const/high16 v9, 0x3f40

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v5, v0

    move v6, v2

    .line 71
    :cond_2
    if-le v2, v3, :cond_5

    move v1, v2

    :goto_2
    move v3, v1

    move-object v1, v0

    .line 75
    goto :goto_1

    .line 77
    :cond_3
    if-eqz v5, :cond_4

    move-object v4, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    if-eqz v1, :cond_0

    move-object v4, v1

    .line 80
    goto :goto_0

    :cond_5
    move-object v0, v1

    move v1, v3

    goto :goto_2
.end method

.method public static a(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 90
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 92
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 95
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 96
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    return-void

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0
.end method
