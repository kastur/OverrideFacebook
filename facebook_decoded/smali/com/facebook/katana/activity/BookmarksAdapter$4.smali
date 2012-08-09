.class Lcom/facebook/katana/activity/BookmarksAdapter$4;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "BookmarksAdapter.java"


# instance fields
.field private synthetic a:Landroid/view/animation/TranslateAnimation;

.field private synthetic b:Lcom/facebook/katana/activity/BookmarksAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BookmarksAdapter;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    iput-object p2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->a:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->c()V

    .line 554
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->d(Lcom/facebook/katana/activity/BookmarksAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->c(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->d(Lcom/facebook/katana/activity/BookmarksAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Lcom/facebook/katana/activity/BookmarksAdapter;)Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Z)V

    .line 558
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->b:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->c(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$4;->a:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    return-void
.end method
