.class public Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;
.super Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;
.source "FacewebWebView.java"


# instance fields
.field final synthetic b:Lcom/facebook/katana/webview/FacewebWebView;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    .line 533
    invoke-direct {p0, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;-><init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    .line 534
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "(function(){if (window.FW_ENABLED) { return \'1\'; }; return null;})()"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;-><init>(Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    .line 633
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 539
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    invoke-interface {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;->a(Lcom/facebook/katana/webview/FacewebWebView$PageState;)V

    .line 540
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v1, v0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 595
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    invoke-interface {v0}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;->a()V

    .line 597
    const-string v0, "FacewebWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FacewebWebViewClient: onReceivedError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 603
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v1, v0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 604
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_SSL:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    invoke-interface {v0}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;->a()V

    .line 606
    const-string v0, "FacewebWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FacewebWebViewClient: onReceivedSslError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 544
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookWebView$FacebookWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    :goto_0
    return v0

    .line 548
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 556
    iget-object v5, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v5, v5, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    sget-object v6, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_SUCCESS:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    if-eq v5, v6, :cond_2

    const-string v5, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".facebook.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "/l.php"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_2
    iget-object v3, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->a:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 570
    if-eqz v3, :cond_3

    .line 571
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 575
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    const-string v1, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 577
    const/high16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
