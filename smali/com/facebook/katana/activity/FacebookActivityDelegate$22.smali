.class Lcom/facebook/katana/activity/FacebookActivityDelegate$22;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 2414
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$22;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$22;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 2418
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$22;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 2419
    return-void
.end method
