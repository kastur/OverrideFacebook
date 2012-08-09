.class public Lcom/facebook/katana/webview/MobileCanvasWebView;
.super Lcom/facebook/katana/webview/FacebookWebView;
.source "MobileCanvasWebView.java"


# instance fields
.field private d:Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView;->a(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/webview/MobileCanvasWebView;->d:Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;

    .line 81
    invoke-virtual {p0}, Lcom/facebook/katana/webview/MobileCanvasWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient;-><init>(Lcom/facebook/katana/webview/MobileCanvasWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/MobileCanvasWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    new-instance v0, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;-><init>(Lcom/facebook/katana/webview/MobileCanvasWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/MobileCanvasWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/katana/webview/MobileCanvasWebView;->d:Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/webview/MobileCanvasWebView;->d:Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;

    invoke-interface {v0}, Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method public setPageFinishedHandler(Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/katana/webview/MobileCanvasWebView;->d:Lcom/facebook/katana/webview/MobileCanvasWebView$PageFinishedHandler;

    .line 63
    return-void
.end method
