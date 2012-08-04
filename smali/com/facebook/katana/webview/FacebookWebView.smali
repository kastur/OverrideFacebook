.class public Lcom/facebook/katana/webview/FacebookWebView;
.super Lcom/facebook/katana/webview/BaseWebView;
.source "FacebookWebView.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected c:Z

.field private d:Lcom/facebook/katana/webview/FacebookJsBridge;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 106
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookWebView;->b:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/webview/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookWebView;->b:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/webview/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookWebView;->b:Landroid/content/Context;

    .line 128
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacebookWebView;->loadUrl(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;

    .line 308
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/Object;)V

    .line 309
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/webview/FacebookJsBridge;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    move-result-object v6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__android_injected_function_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    const-string v0, "javascript:var %1$s = function() { return %2$s;};"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v7, v1, v9

    aput-object p1, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacebookWebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v0, "callId"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "exc"

    new-instance v1, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    const-string v3, "__android_exception"

    invoke-direct {v1, v3}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "retval"

    new-instance v1, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    const-string v3, "__android_retval"

    invoke-direct {v1, v3}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "fbrpc"

    const-string v1, "facebook"

    const-string v4, "call_return"

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/webview/FacewebUriPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    const-string v0, "callId"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "exc"

    new-instance v1, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    const-string v3, "err"

    invoke-direct {v1, v3}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "fbrpc"

    const-string v1, "facebook"

    const-string v4, "call_return"

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/webview/FacewebUriPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "javascript:(function() { var __android_exception = null; var __android_retval; try { __android_retval = %1$s();} catch (err) { window.prompt(%2$s);throw err; }window.prompt(%3$s);%1$s = null;})()"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v9

    aput-object v0, v2, v10

    aput-object v8, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacebookWebView;->loadUrl(Ljava/lang/String;)V

    .line 236
    return-object v6

    .line 218
    :cond_0
    const-string v0, "javascript:(function() { var __android_exception = null; var __android_retval = null; try { __android_retval = %1$s();} catch (err) { __android_exception = true; }window.prompt(%2$s);%1$s = null;})()"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v7, v1, v9

    aput-object v8, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/facebook/katana/webview/BaseWebView;->a(Landroid/content/Context;)V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->a:Ljava/util/Map;

    .line 346
    new-instance v0, Lcom/facebook/katana/webview/FacebookJsBridge;

    const-string v1, "FacebookWebView"

    invoke-direct {v0, v1}, Lcom/facebook/katana/webview/FacebookJsBridge;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    .line 347
    const-string v0, "fbrpc"

    iget-object v1, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    iget-object v1, v1, Lcom/facebook/katana/webview/FacebookJsBridge;->a:Lcom/facebook/katana/webview/FacebookJsBridge$UriHandler;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$UrlHandler;)V

    .line 348
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    invoke-virtual {v0, p1, p0, p2}, Lcom/facebook/katana/webview/FacebookJsBridge;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)Z

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/webview/FacebookJsBridge;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 318
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 269
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    const-string p2, "null"

    .line 274
    :cond_1
    const-string v0, "(function() {var event = document.createEvent(\'Event\');event.initEvent(\'%1$s\', true, true);event.data = \'%2$s\';document.dispatchEvent(event);})();"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;

    invoke-direct {v3, p2}, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p1, p2}, Lcom/facebook/katana/webview/FacebookJsBridge;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0, p3}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    .line 259
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/facebook/katana/webview/FacebookWebView$RPCChromeClient;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/FacebookWebView$RPCChromeClient;-><init>(Lcom/facebook/katana/webview/FacebookWebView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacebookWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 357
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    .line 299
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView;->d:Lcom/facebook/katana/webview/FacebookJsBridge;

    iget-object v0, v0, Lcom/facebook/katana/webview/FacebookJsBridge;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/webview/BaseWebView;->destroy()V

    .line 327
    return-void
.end method

.method public setMobilePage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookWebView;->e:Ljava/lang/String;

    .line 133
    return-void
.end method
