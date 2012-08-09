.class Lcom/facebook/katana/webview/FacewebWebView$2;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookAuthentication$Callback;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacewebWebView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebWebView$2;->a:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$2;->a:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->e()V

    .line 290
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$2;->a:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;)V

    .line 296
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$2;->a:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;)V

    .line 302
    return-void
.end method
