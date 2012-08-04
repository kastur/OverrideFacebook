.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;


# virtual methods
.method public final a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 628
    :cond_0
    return-void
.end method

.method public final a(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 669
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->f()F

    move-result v2

    .line 670
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 671
    iget v3, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    .line 672
    and-int/lit16 v3, v3, 0x1ff

    if-eqz v3, :cond_0

    .line 673
    iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 675
    :cond_0
    iget-object v3, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    .line 676
    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v1

    .line 678
    :goto_0
    if-ge v0, v4, :cond_1

    .line 679
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 680
    mul-float v5, v2, v7

    add-float/2addr v5, v7

    .line 684
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v6, v1, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 695
    return-void
.end method

.method public final b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public final c(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    .line 635
    :cond_0
    return-void
.end method

.method public final d(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 642
    :cond_0
    return-void
.end method
