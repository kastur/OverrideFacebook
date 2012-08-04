.class Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;
.super Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;
.source "FacebookWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;-><init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    .line 368
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 374
    instance-of v0, p1, Lcom/facebook/katana/webview/FacebookWebView;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 378
    :cond_0
    check-cast p1, Lcom/facebook/katana/webview/FacebookWebView;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function() {window.__fbNative = {};window.__fbNative.nativeReady = true;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/activity/apps/PostMessageHandler;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1, v0, v2}, Lcom/facebook/katana/webview/FacebookWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 390
    const-string v0, "fbNativeReady"

    invoke-virtual {p1, v0, v2}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
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

    .line 429
    const-string v1, "FacebookWebView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 415
    :goto_0
    return v0

    .line 399
    :cond_0
    instance-of v0, p1, Lcom/facebook/katana/webview/FacebookWebView;

    if-nez v0, :cond_1

    move v0, v2

    .line 400
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 403
    check-cast v0, Lcom/facebook/katana/webview/FacebookWebView;

    .line 406
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 407
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 408
    iget-object v0, v0, Lcom/facebook/katana/webview/FacebookWebView;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;

    .line 410
    if-eqz v0, :cond_2

    .line 411
    iget-object v2, p0, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->a:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/webview/FacebookWebView;

    invoke-interface {v0, v2, p1, v3}, Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Landroid/net/Uri;)V

    move v0, v1

    .line 412
    goto :goto_0

    :cond_2
    move v0, v2

    .line 415
    goto :goto_0
.end method
