.class abstract Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field protected b:Landroid/os/Handler;

.field protected c:Lcom/facebook/katana/webview/FacewebPalCall;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    .line 2749
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;->b:Landroid/os/Handler;

    .line 2750
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2771
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2756
    iput-object p3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    .line 2758
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 2760
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2766
    return-void
.end method

.method public abstract b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
.end method
