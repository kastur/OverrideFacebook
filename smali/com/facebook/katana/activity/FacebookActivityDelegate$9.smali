.class Lcom/facebook/katana/activity/FacebookActivityDelegate$9;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$9;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$9;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$9;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1197
    return-void
.end method
