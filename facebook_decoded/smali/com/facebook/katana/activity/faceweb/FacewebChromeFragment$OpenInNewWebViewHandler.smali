.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$OpenInNewWebViewHandler;
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
    .line 2117
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$OpenInNewWebViewHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2118
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2119
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2123
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2125
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$OpenInNewWebViewHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Ljava/lang/String;)V

    .line 2127
    :cond_0
    return-void
.end method
