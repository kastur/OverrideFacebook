.class Lcom/facebook/orca/threadview/ThreadViewActivity$8;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1081
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->e(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    .line 1082
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threadview/ThreadViewActivity;Z)Z

    .line 1083
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Lcom/facebook/orca/threadview/ThreadViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->f(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1077
    return-void
.end method
