.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$HideSoftKeyboardHandler;
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
    .line 2134
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$HideSoftKeyboardHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2135
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2136
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$HideSoftKeyboardHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 2142
    return-void
.end method
