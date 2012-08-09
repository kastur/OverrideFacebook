.class public Lcom/facebook/katana/view/FacebookWebViewActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "FacebookWebViewActivity.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "url"

    sput-object v0, Lcom/facebook/katana/view/FacebookWebViewActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030118

    invoke-virtual {p0, v0}, Lcom/facebook/katana/view/FacebookWebViewActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/facebook/katana/view/FacebookWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/view/FacebookWebViewActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookWebViewActivity;->g:Ljava/lang/String;

    .line 25
    const v0, 0x7f080310

    invoke-virtual {p0, v0}, Lcom/facebook/katana/view/FacebookWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookWebViewActivity;->f:Landroid/webkit/WebView;

    .line 26
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookWebViewActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookWebViewActivity;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/katana/view/FacebookWebViewActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    return-void
.end method
