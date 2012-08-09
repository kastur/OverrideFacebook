.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$DismissModalDialog;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$DismissModalDialog;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2444
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2445
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$DismissModalDialog;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2451
    if-nez v0, :cond_0

    .line 2459
    :goto_0
    return-void

    .line 2454
    :cond_0
    const-string v1, "composer_tour_completed"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    const-string v1, "composer_share_location"

    invoke-static {v0, v1}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2458
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
