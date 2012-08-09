.class public Lcom/facebook/katana/FB4ASplashScreenLayout;
.super Landroid/widget/RelativeLayout;
.source "FB4ASplashScreenLayout.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Intent;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->a:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/facebook/katana/FB4ASplashScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/FB4ASplashScreenLayout$1;-><init>(Lcom/facebook/katana/FB4ASplashScreenLayout;)V

    iput-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->c:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->a:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/facebook/katana/FB4ASplashScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/FB4ASplashScreenLayout$1;-><init>(Lcom/facebook/katana/FB4ASplashScreenLayout;)V

    iput-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->c:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/FB4ASplashScreenLayout;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->b:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

.method public setLaunchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/katana/FB4ASplashScreenLayout;->b:Landroid/content/Intent;

    .line 55
    return-void
.end method
