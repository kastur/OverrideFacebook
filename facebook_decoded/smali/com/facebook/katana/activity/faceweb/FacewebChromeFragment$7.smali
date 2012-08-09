.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacewebWebView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;->a:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->destroy()V

    .line 717
    :cond_0
    return-void
.end method
