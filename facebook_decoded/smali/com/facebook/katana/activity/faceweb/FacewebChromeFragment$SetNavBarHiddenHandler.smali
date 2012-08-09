.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2406
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2407
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2412
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-interface {v0, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;I)I

    .line 2416
    return-void

    .line 2412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2422
    if-eqz v0, :cond_0

    .line 2423
    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2424
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->m(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2425
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->m(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2428
    :cond_0
    return-void
.end method
