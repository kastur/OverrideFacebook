.class Lcom/facebook/katana/webview/MobileCanvasWebView$MobileCanvasWebViewClient$1;
.super Ljava/lang/Object;
.source "MobileCanvasWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookAuthentication$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/MobileCanvasWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "MobileCanvasWebView"

    const-string v1, "Auth success"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "MobileCanvasWebView"

    const-string v1, "Auth failed"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
