.class public Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
.super Lcom/nineoldandroids/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorHC.java"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 424
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f80

    aput v1, v0, v2

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->b([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 425
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 430
    :goto_0
    if-ge v1, v4, :cond_0

    .line 431
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    new-instance v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v1, v2, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {v3, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    invoke-virtual {v3, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 437
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->a()V

    .line 447
    return-void
.end method

.method private a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 528
    sparse-switch p1, :sswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 531
    :sswitch_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 535
    :sswitch_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 539
    :sswitch_2
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 543
    :sswitch_3
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 547
    :sswitch_4
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 551
    :sswitch_5
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 555
    :sswitch_6
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 559
    :sswitch_7
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 563
    :sswitch_8
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 567
    :sswitch_9
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    return-void
.end method

.method static synthetic b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Landroid/view/View;

    return-object v0
.end method
