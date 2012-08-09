.class Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;
.super Ljava/lang/Object;
.source "RefreshableFacewebWebViewContainer.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_ERROR:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 273
    return-void
.end method

.method public final a(Lcom/facebook/katana/webview/FacewebWebView$PageState;)V
    .locals 2
    .parameter

    .prologue
    .line 260
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_SUCCESS:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    if-eq p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 263
    :cond_0
    return-void
.end method
