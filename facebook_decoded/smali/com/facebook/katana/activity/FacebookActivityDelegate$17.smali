.class Lcom/facebook/katana/activity/FacebookActivityDelegate$17;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iput-boolean p2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->a:Z

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 1974
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1975
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1979
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->a:Z

    if-nez v0, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->b()I

    move-result v0

    .line 1986
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1987
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 1988
    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    .line 1990
    iget-object v2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->w(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/ListView;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_0

    .line 1994
    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1995
    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 2001
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 2004
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2006
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->x(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/activity/FacebookActivityDelegate$17$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$17$1;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate$17;Landroid/graphics/drawable/TransitionDrawable;)V

    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
