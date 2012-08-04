.class public Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;
.super Landroid/app/Dialog;
.source "PlatformWebViewDialog.java"


# instance fields
.field private a:Lcom/facebook/katana/webview/MobileCanvasWebView;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const v0, 0x7f0d0018

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->b:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 69
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 76
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/MobileCanvasWebView;

    iput-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/webview/MobileCanvasWebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    const-string v1, "setNavBarTitle"

    new-instance v2, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTitleHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->b:Landroid/os/Handler;

    invoke-direct {v2, p0, p0, v3}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTitleHandler;-><init>(Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;Landroid/app/Dialog;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/MobileCanvasWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    const-string v1, "setNavBarButton"

    new-instance v2, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;

    iget-object v3, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->b:Landroid/os/Handler;

    invoke-direct {v2, p0, p0, v3}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;-><init>(Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;Landroid/app/Dialog;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/MobileCanvasWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    const-string v1, "postMessageWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/PostMessageHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->a:Lcom/facebook/katana/webview/MobileCanvasWebView;

    iget-object v4, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;->b:Landroid/os/Handler;

    invoke-direct {v2, p2, v3, v4}, Lcom/facebook/katana/activity/apps/PostMessageHandler;-><init>(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacebookWebView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/MobileCanvasWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 85
    return-void
.end method
