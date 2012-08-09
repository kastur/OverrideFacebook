.class Lcom/facebook/katana/activity/FacebookActivityDelegate$11;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$11;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Z)V

    .line 1356
    return-void
.end method
