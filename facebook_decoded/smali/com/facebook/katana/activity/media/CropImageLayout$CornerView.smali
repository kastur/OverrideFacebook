.class Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
.super Landroid/view/View;
.source "CropImageLayout.java"


# instance fields
.field private a:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

.field private b:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

.field private c:I

.field private synthetic d:Lcom/facebook/katana/activity/media/CropImageLayout;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CropImageLayout;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x50

    .line 323
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    .line 324
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->c:I

    .line 326
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    return-object p1
.end method

.method private a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    return-object p1
.end method

.method private b(F)Z
    .locals 2
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CropImageLayout;->b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 357
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 358
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 359
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 360
    return-object v1
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 401
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->c()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 389
    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 392
    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 395
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method public final a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x35

    const/16 v0, 0x1b

    .line 338
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 341
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 342
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->d:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->a(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/RectF;

    move-result-object v1

    .line 345
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 349
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 350
    iget v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 352
    return-void
.end method
