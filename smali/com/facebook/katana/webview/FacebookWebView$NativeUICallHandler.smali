.class public abstract Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.super Ljava/lang/Object;
.source "FacebookWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field protected b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;->b:Landroid/os/Handler;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;->b(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler$1;-><init>(Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public abstract a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
.end method

.method public b(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    return-void
.end method
