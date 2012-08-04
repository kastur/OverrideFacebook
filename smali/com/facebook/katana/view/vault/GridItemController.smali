.class public Lcom/facebook/katana/view/vault/GridItemController;
.super Ljava/lang/Object;
.source "GridItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Z

.field private b:Lcom/facebook/katana/model/MediaItem;

.field private c:Landroid/graphics/Matrix;

.field private d:Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;

.field private e:Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    .line 48
    const v0, 0x7f08014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->h:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    .line 52
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 142
    rem-int/lit8 v0, p2, 0x5a

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rotation must be multiple of 90, rot="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 147
    iget-object v1, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 149
    rem-int/lit16 v0, p2, 0x168

    .line 150
    if-gez v0, :cond_1

    .line 151
    add-int/lit16 v0, v0, 0x168

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 155
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 159
    iget-object v4, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    neg-float v5, v2

    neg-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    iget-object v4, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 161
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 168
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 169
    return-void

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/model/MediaItem;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->a:Z

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->f()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Landroid/graphics/Bitmap;I)V

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/GridItemController;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/MediaItem;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-object p1, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/facebook/katana/view/vault/GridItemController;->a(Z)V

    .line 68
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/katana/view/vault/GridItemController;->a:Z

    .line 71
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_1
    return-void
.end method

.method public final a(Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/katana/view/vault/GridItemController;->d:Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;

    .line 137
    return-void
.end method

.method public final a(Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/katana/view/vault/GridItemController;->e:Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;

    .line 132
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    return-void
.end method

.method public final b(Lcom/facebook/katana/model/MediaItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v1}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->e:Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->e:Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;

    invoke-interface {v0, p0, p2}, Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;->a(Lcom/facebook/katana/view/vault/GridItemController;Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->d:Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->b:Lcom/facebook/katana/model/MediaItem;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/view/vault/GridItemController;->d:Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;

    invoke-interface {v0, p0}, Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;->a(Lcom/facebook/katana/view/vault/GridItemController;)V

    .line 112
    :cond_0
    return-void
.end method
