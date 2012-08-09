.class Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;


# virtual methods
.method public final a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 636
    :cond_0
    return-void
.end method

.method public final a(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 677
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->f()F

    move-result v2

    .line 678
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    .line 679
    iget v3, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    .line 680
    and-int/lit16 v3, v3, 0x1ff

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 683
    :cond_0
    iget-object v3, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    .line 684
    if-eqz v3, :cond_1

    .line 685
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v1

    .line 686
    :goto_0
    if-ge v0, v4, :cond_1

    .line 687
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 688
    mul-float v5, v2, v7

    add-float/2addr v5, v7

    .line 692
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v6, v1, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->a(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;IF)V

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 703
    return-void
.end method

.method public final b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    return-void
.end method

.method public final c(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    .line 643
    :cond_0
    return-void
.end method

.method public final d(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 650
    :cond_0
    return-void
.end method
