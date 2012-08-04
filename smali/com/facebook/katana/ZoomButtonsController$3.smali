.class Lcom/facebook/katana/ZoomButtonsController$3;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ZoomButtonsController;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$3;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {}, Lcom/facebook/katana/ZoomButtonsController;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->a(Lcom/facebook/katana/ZoomButtonsController;I)V

    .line 270
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$3;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->e(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$3;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->e(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->b()V

    .line 271
    :cond_0
    return-void
.end method
