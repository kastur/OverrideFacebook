.class Lcom/facebook/katana/activity/stream/StreamActivity$14;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookAuthentication$Callback;


# instance fields
.field private synthetic a:Landroid/webkit/WebView;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->c:Lcom/facebook/katana/activity/stream/StreamActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->c:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->c:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1739
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->c:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$14;->c:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1745
    return-void
.end method
