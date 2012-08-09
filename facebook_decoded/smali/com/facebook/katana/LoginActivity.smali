.class public Lcom/facebook/katana/LoginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/FB4ASplashScreenLayout;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/katana/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FB4ASplashScreenLayout;->setLaunchIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/facebook/katana/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 40
    return-void
.end method
