.class public Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;
.super Lcom/facebook/katana/webview/FacebookWebView$RPCChromeClient;
.source "MobileCanvasWebView.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/webview/MobileCanvasWebView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView$RPCChromeClient;-><init>(Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 101
    iput-object p2, p0, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;->a:Landroid/content/Context;

    .line 102
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/webview/FacebookWebView$RPCChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 110
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 111
    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 112
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object v2, p0, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;->a:Landroid/content/Context;

    const v3, 0x7f0b0203

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0201

    new-instance v3, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient$2;-><init>(Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0202

    new-instance v3, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient$1;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient$1;-><init>(Lcom/facebook/katana/webview/MobileCanvasWebView$GeolocationWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 141
    return-void
.end method
