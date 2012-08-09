.class Lcom/facebook/orca/camera/CropImageView;
.super Lcom/facebook/orca/camera/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/orca/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/orca/camera/HighlightView;

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    .line 579
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 621
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 623
    invoke-virtual {v0, v2}, Lcom/facebook/orca/camera/HighlightView;->a(Z)V

    .line 624
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->c()V

    .line 621
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 627
    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/camera/HighlightView;->a(FF)I

    move-result v1

    .line 630
    if-eq v1, v4, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 632
    invoke-virtual {v0, v4}, Lcom/facebook/orca/camera/HighlightView;->a(Z)V

    .line 633
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->c()V

    .line 638
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->invalidate()V

    .line 639
    return-void
.end method

.method private b(Lcom/facebook/orca/camera/HighlightView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 736
    iget-object v1, p1, Lcom/facebook/orca/camera/HighlightView;->b:Landroid/graphics/Rect;

    .line 738
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 739
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 741
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 742
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 744
    if-eqz v2, :cond_2

    .line 745
    :goto_0
    if-eqz v0, :cond_3

    .line 747
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 748
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/CropImageView;->b(FF)V

    .line 750
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 744
    goto :goto_0

    :cond_3
    move v0, v1

    .line 745
    goto :goto_1
.end method

.method private c(Lcom/facebook/orca/camera/HighlightView;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    .line 755
    iget-object v0, p1, Lcom/facebook/orca/camera/HighlightView;->b:Landroid/graphics/Rect;

    .line 757
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 758
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 760
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 761
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 763
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 764
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 766
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 767
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->b()F

    move-result v1

    mul-float/2addr v0, v1

    .line 768
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 770
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->b()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 771
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/facebook/orca/camera/HighlightView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/facebook/orca/camera/HighlightView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    .line 773
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 774
    aget v2, v1, v5

    aget v1, v1, v6

    const/high16 v3, 0x4396

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/facebook/orca/camera/CropImageView;->a(FFFF)V

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImageView;->b(Lcom/facebook/orca/camera/HighlightView;)V

    .line 778
    return-void
.end method


# virtual methods
.method protected final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(FF)V

    .line 611
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 613
    iget-object v2, v0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 614
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->c()V

    .line 611
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method protected final a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/camera/ImageViewTouchBase;->a(FFF)V

    .line 584
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 585
    iget-object v2, v0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 586
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->c()V

    goto :goto_0

    .line 588
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/camera/HighlightView;)V
    .locals 1
    .parameter

    .prologue
    .line 789
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->invalidate()V

    .line 791
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 782
    invoke-super {p0, p1}, Lcom/facebook/orca/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 783
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/camera/HighlightView;->a(Landroid/graphics/Canvas;)V

    .line 783
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 786
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 566
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->b:Lcom/facebook/orca/camera/RotateBitmap;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 568
    iget-object v2, v0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 569
    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->c()V

    .line 570
    iget-boolean v2, v0, Lcom/facebook/orca/camera/HighlightView;->a:Z

    if-eqz v2, :cond_0

    .line 571
    invoke-direct {p0, v0}, Lcom/facebook/orca/camera/CropImageView;->c(Lcom/facebook/orca/camera/HighlightView;)V

    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 643
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/CropImage;

    .line 644
    iget-boolean v1, v0, Lcom/facebook/orca/camera/CropImage;->b:Z

    if-eqz v1, :cond_0

    .line 731
    :goto_0
    return v2

    .line 648
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 716
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v2, v5

    .line 731
    goto :goto_0

    .line 650
    :pswitch_0
    iget-boolean v0, v0, Lcom/facebook/orca/camera/CropImage;->a:Z

    if-eqz v0, :cond_3

    .line 651
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 653
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/camera/HighlightView;->a(FF)I

    move-result v2

    .line 656
    if-eq v2, v5, :cond_5

    .line 657
    iput v2, p0, Lcom/facebook/orca/camera/CropImageView;->g:I

    .line 658
    iput-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImageView;->e:F

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImageView;->f:F

    .line 661
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->Move:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/orca/camera/HighlightView;->a(Lcom/facebook/orca/camera/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->Grow:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    goto :goto_4

    .line 653
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 671
    :pswitch_1
    iget-boolean v1, v0, Lcom/facebook/orca/camera/CropImage;->a:Z

    if-eqz v1, :cond_9

    move v3, v2

    .line 672
    :goto_5
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 673
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/camera/HighlightView;

    .line 674
    invoke-virtual {v1}, Lcom/facebook/orca/camera/HighlightView;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 675
    iput-object v1, v0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    move v4, v2

    .line 676
    :goto_6
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 677
    if-eq v4, v3, :cond_6

    .line 678
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/camera/HighlightView;->b(Z)V

    .line 676
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 682
    :cond_7
    invoke-direct {p0, v1}, Lcom/facebook/orca/camera/CropImageView;->c(Lcom/facebook/orca/camera/HighlightView;)V

    .line 683
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/CropImage;

    iput-boolean v2, v0, Lcom/facebook/orca/camera/CropImage;->a:Z

    move v2, v5

    .line 684
    goto/16 :goto_0

    .line 672
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 687
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    if-eqz v0, :cond_a

    .line 688
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/camera/CropImageView;->c(Lcom/facebook/orca/camera/HighlightView;)V

    .line 689
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    sget-object v1, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->None:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/camera/HighlightView;->a(Lcom/facebook/orca/camera/HighlightView$ModifyMode;)V

    .line 692
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    goto/16 :goto_1

    .line 695
    :pswitch_2
    iget-boolean v0, v0, Lcom/facebook/orca/camera/CropImage;->a:Z

    if-eqz v0, :cond_b

    .line 696
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 697
    :cond_b
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    iget v1, p0, Lcom/facebook/orca/camera/CropImageView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/facebook/orca/camera/CropImageView;->e:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/facebook/orca/camera/CropImageView;->f:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/camera/HighlightView;->a(IFF)V

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImageView;->e:F

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImageView;->f:F

    .line 710
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImageView;->d:Lcom/facebook/orca/camera/HighlightView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/camera/CropImageView;->b(Lcom/facebook/orca/camera/HighlightView;)V

    goto/16 :goto_1

    .line 718
    :pswitch_3
    invoke-virtual {p0, v5, v5}, Lcom/facebook/orca/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 725
    :pswitch_4
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImageView;->b()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 726
    invoke-virtual {p0, v5, v5}, Lcom/facebook/orca/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 716
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
