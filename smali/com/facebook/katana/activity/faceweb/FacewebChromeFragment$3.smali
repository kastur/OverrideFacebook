.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$3;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$3;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$3;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z

    .line 573
    return-void
.end method
