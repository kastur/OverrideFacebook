.class Lcom/facebook/katana/ZoomButtonsController$Container;
.super Landroid/widget/FrameLayout;
.source "ZoomButtonsController.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ZoomButtonsController;


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$Container;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0, p1}, Lcom/facebook/katana/ZoomButtonsController;->a(Lcom/facebook/katana/ZoomButtonsController;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
