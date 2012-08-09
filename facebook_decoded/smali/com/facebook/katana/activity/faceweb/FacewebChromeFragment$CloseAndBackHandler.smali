.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private a:Z

.field private synthetic c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;->c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2473
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2474
    iput-boolean p3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;->a:Z

    .line 2475
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;->c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2481
    if-eqz v0, :cond_0

    .line 2482
    iget-boolean v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;->a:Z

    if-eqz v1, :cond_1

    .line 2483
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2485
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
