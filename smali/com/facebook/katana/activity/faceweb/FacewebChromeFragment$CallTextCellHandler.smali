.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private synthetic d:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->d:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1410
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1411
    iput-object p4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->a:Ljava/lang/String;

    .line 1412
    iput-object p3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->c:Ljava/lang/String;

    .line 1413
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1418
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "target"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1421
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1422
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->d:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/content/Intent;)V

    .line 1426
    :goto_0
    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;->d:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Empty phone number; text/call skipped."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
