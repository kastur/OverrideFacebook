.class public Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "PlatformWebViewDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/apps/PlatformWebViewDialog;Landroid/app/Dialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p3}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 126
    iput-object p2, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;->a:Landroid/app/Dialog;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;->a:Landroid/app/Dialog;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;->c:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    :goto_0
    new-instance v1, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton$DialogActionButtonHandler;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton$DialogActionButtonHandler;-><init>(Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;Lcom/facebook/katana/webview/FacebookWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void

    .line 137
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/facebook/katana/activity/apps/PlatformWebViewDialog$SetDialogTextActionButton;->a:Landroid/app/Dialog;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
