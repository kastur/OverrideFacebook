.class Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;
.super Landroid/view/View;
.source "RefreshableFacewebWebViewContainer.java"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private synthetic c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    .line 609
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 610
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 613
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-static {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->getWidth()I

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-static {v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/webview/FacewebWebView;->getHeight()I

    move-result v1

    .line 615
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c()V

    .line 618
    iget-object v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-static {v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/webview/FacewebWebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v0, " WebViewPlacement"

    const-string v1, "Error: snapshotting a webview which is not visible! This will result in a blank screen. Please fix!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 632
    new-instance v2, Lcom/facebook/katana/util/MemoryInfo;

    invoke-direct {v2}, Lcom/facebook/katana/util/MemoryInfo;-><init>()V

    .line 633
    iget-wide v3, v2, Lcom/facebook/katana/util/MemoryInfo;->a:J

    iget-wide v5, v2, Lcom/facebook/katana/util/MemoryInfo;->b:J

    cmp-long v2, v3, v5

    if-ltz v2, :cond_2

    .line 635
    const-string v0, "WebViewPlacement"

    const-string v1, "Out of Memory"

    invoke-static {v0, v1, v7}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 639
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    .line 640
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->draw(Landroid/graphics/Canvas;)V

    .line 641
    iput-boolean v7, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->a:Z

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->a:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    .line 661
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->a:Z

    .line 662
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-static {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 654
    :cond_0
    return-void
.end method
