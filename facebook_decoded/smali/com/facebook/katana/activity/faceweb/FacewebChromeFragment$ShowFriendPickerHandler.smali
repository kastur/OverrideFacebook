.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;
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
    .line 1372
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1373
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1374
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1379
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1380
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callback"

    invoke-interface {p2, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1381
    const-string v1, "profiles"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1383
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/content/Intent;I)V

    .line 1384
    return-void
.end method
