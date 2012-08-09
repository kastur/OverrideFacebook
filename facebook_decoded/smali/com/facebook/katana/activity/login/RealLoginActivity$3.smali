.class Lcom/facebook/katana/activity/login/RealLoginActivity$3;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->b:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->b:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v3, 0x7f0800de

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 392
    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->b:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v4, 0x7f0800d8

    invoke-virtual {v3, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 394
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->b:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v3, v0, 0x2

    .line 398
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 403
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->b:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->e(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$3;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void
.end method
