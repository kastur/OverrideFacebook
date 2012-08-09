.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookActivity;

.field private synthetic c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Lcom/facebook/katana/activity/BaseFacebookActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;->c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iput-object p3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;->c:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/BaseFacebookActivity;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 521
    return-void
.end method
