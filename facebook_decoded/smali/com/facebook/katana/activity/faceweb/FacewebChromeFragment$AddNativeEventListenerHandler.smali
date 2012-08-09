.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1309
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1310
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1318
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1321
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not register native event listener: event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " callback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->E()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring unknown event listener type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->d(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
