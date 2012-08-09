.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;
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
    .line 1431
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1432
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1433
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback"

    invoke-interface {p2, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->c()Ljava/lang/String;

    move-result-object v0

    .line 1441
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const-string v2, "target"

    invoke-interface {p2, v0, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;J)J

    .line 1443
    const-string v1, "true"

    const-string v2, "photosOnly"

    invoke-interface {p2, v0, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1446
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v1

    .line 1447
    const-string v2, "extra_disable_video"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1448
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/content/Intent;)V

    .line 1449
    return-void

    .line 1440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
