.class Lcom/facebook/katana/activity/login/RealLoginActivity$2;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$2;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 376
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$2;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$2;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 378
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$2;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)V

    .line 381
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 382
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 383
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    return-void
.end method
