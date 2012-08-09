.class public Lcom/facebook/katana/activity/apps/PostMessageHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "PostMessageHandler.java"


# instance fields
.field private a:Lcom/facebook/katana/webview/FacebookWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/katana/activity/apps/PostMessageHandler;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacebookWebView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p3}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 52
    iput-object p1, p0, Lcom/facebook/katana/activity/apps/PostMessageHandler;->a:Lcom/facebook/katana/webview/FacebookWebView;

    .line 53
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 30
    const-string v0, "message"

    new-instance v1, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    const-string v3, "message"

    invoke-direct {v1, v3}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "targetOrigin"

    new-instance v1, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    const-string v3, "targetOrigin"

    invoke-direct {v1, v3}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "fbrpc"

    const-string v1, "facebook"

    const-string v4, "postMessageWebview"

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/webview/FacewebUriPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "window.__fbNative.postMessage = function(%1$s, %2$s) {window.prompt(%3$s);};"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "message"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "targetOrigin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    const-string v2, ""

    invoke-interface {p2, v0, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetOrigin"

    const-string v3, ""

    invoke-interface {p2, v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/facebook/katana/activity/apps/PostMessageHandler;->a:Lcom/facebook/katana/webview/FacebookWebView;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
