.class Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebWebView.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 645
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "script"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 654
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/Constants$URL;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    const-string v0, "FacewebWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page with Non-facebook URL ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") attempting to invoke broadcastScript"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;->b:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler$1;-><init>(Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;Ljava/lang/String;)V

    int-to-long v0, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
