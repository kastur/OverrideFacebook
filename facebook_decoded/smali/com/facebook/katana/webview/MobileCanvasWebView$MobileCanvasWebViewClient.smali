.class public Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient;
.super Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;
.source "MobileCanvasWebView.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/webview/MobileCanvasWebView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient$1;

    invoke-direct {v0, p1}, Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient$1;-><init>(Lcom/facebook/katana/webview/MobileCanvasWebView;)V

    invoke-direct {p0, p2, v0}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;-><init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 171
    check-cast p1, Lcom/facebook/katana/webview/MobileCanvasWebView;

    .line 172
    invoke-virtual {p1, p2}, Lcom/facebook/katana/webview/MobileCanvasWebView;->a(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v1, "url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed (code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "MobileCanvasWebView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
