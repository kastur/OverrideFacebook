.class Lcom/facebook/katana/webview/FacewebWebView$4;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/facebook/katana/webview/FacebookWebView;->c:Z

    .line 347
    return-void
.end method
