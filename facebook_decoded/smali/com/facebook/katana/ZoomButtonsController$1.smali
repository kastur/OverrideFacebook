.class Lcom/facebook/katana/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ZoomButtonsController;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->a(Lcom/facebook/katana/ZoomButtonsController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->b(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->b(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
