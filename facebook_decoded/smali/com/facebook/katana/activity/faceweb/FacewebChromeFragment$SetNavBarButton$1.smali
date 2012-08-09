.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;)V
    .locals 0
    .parameter

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 2364
    return-void
.end method
