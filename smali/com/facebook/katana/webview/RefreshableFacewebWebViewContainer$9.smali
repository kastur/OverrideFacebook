.class Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "RefreshableFacewebWebViewContainer.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-static {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 551
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;->a:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 552
    return-void
.end method
