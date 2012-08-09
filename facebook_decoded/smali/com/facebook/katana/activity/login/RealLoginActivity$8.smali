.class Lcom/facebook/katana/activity/login/RealLoginActivity$8;
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
    .line 753
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 756
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->h(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->i(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->j(Lcom/facebook/katana/activity/login/RealLoginActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 760
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->k(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->l(Lcom/facebook/katana/activity/login/RealLoginActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->l(Lcom/facebook/katana/activity/login/RealLoginActivity;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    long-to-float v0, v0

    mul-float/2addr v0, v3

    const v1, 0x476a6000

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 763
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->m(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/view/FacebookProgressCircleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setProgress(I)V

    .line 764
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->e(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->n(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->g()V

    .line 768
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->o(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    .line 770
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->p(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    goto :goto_0

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->o(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->o(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->q(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 780
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0220

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 782
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    .line 783
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->h(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 784
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->showDialog(I)V

    .line 786
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)V

    .line 788
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$8;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->m(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/view/FacebookProgressCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    goto/16 :goto_0
.end method
