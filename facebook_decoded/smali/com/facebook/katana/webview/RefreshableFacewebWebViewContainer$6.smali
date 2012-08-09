.class Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$6;
.super Ljava/lang/Object;
.source "RefreshableFacewebWebViewContainer.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$6;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$6;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Z)V

    .line 317
    return-void
.end method
