.class Lcom/facebook/katana/webview/FacewebWebView$7;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacewebWebView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebWebView$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    return-void
.end method

.method public final a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 464
    sget-object v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    if-ne p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;)V

    goto :goto_0
.end method
