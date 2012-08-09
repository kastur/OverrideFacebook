.class Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;->a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;->a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v1, v0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 624
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;->a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_INVALID_HTML:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;->a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    invoke-interface {v0}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;->a()V

    .line 627
    const-string v0, "FacewebWebView"

    const-string v1, "FacewebWebViewClient: onPageFinished: loaded bad html"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient$1;->a:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;->b:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_SUCCESS:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v1, v0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 630
    check-cast p1, Lcom/facebook/katana/webview/FacewebWebView;

    invoke-static {p1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Lcom/facebook/katana/webview/FacewebWebView;)V

    goto :goto_0
.end method
