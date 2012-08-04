.class public Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallReturnHandler;
.super Ljava/lang/Object;
.source "FacebookJsBridge.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacebookJsBridge;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/webview/FacebookJsBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallReturnHandler;->a:Lcom/facebook/katana/webview/FacebookJsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callId"

    invoke-interface {p3, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exc"

    invoke-interface {p3, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retval"

    invoke-interface {p3, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    const-string v0, "null"

    invoke-static {v0, v4}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 130
    :goto_0
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallReturnHandler;->a:Lcom/facebook/katana/webview/FacebookJsBridge;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacebookJsBridge;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/Tuple;

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    iget-object v1, v0, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1, p2, v3, v2, v5}, Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;->a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 143
    :cond_0
    if-eqz v2, :cond_1

    .line 144
    iget-object v0, v0, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/facebook/katana/service/method/JsErrorLogging;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallReturnHandler;->a:Lcom/facebook/katana/webview/FacebookJsBridge;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacebookJsBridge;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js called native_return with callId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no call with that callId was made."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
