.class Lcom/facebook/katana/FB4ASplashScreenLayout$1;
.super Ljava/lang/Object;
.source "FB4ASplashScreenLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/FB4ASplashScreenLayout;


# direct methods
.method constructor <init>(Lcom/facebook/katana/FB4ASplashScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/katana/FB4ASplashScreenLayout$1;->a:Lcom/facebook/katana/FB4ASplashScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout$1;->a:Lcom/facebook/katana/FB4ASplashScreenLayout;

    invoke-virtual {v0}, Lcom/facebook/katana/FB4ASplashScreenLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v2, p0, Lcom/facebook/katana/FB4ASplashScreenLayout$1;->a:Lcom/facebook/katana/FB4ASplashScreenLayout;

    invoke-static {v2}, Lcom/facebook/katana/FB4ASplashScreenLayout;->a(Lcom/facebook/katana/FB4ASplashScreenLayout;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 38
    const-string v2, "activity_launcher"

    const-string v3, "FB4ALauncher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
