.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;
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
    .line 2514
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2515
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2516
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2531
    :goto_0
    return-void

    .line 2523
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "options"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2524
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dismiss_script"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2526
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected_index"

    invoke-interface {p2, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2528
    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;

    move-result-object v0

    .line 2530
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
