.class Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler$1;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p2, p0, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 663
    invoke-static {}, Lcom/facebook/katana/webview/FacewebWebView;->g()Ljava/util/List;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebWebView;

    .line 667
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/Constants$URL;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    iget-object v2, p0, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    goto :goto_0

    .line 675
    :cond_0
    const-string v2, "FacewebWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipped broadcast to non-FB url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_1
    return-void
.end method
