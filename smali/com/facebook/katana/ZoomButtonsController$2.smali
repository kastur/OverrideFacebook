.class Lcom/facebook/katana/ZoomButtonsController$2;
.super Landroid/os/Handler;
.source "ZoomButtonsController.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ZoomButtonsController;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->c(Lcom/facebook/katana/ZoomButtonsController;)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->a:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->a(Z)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->d(Lcom/facebook/katana/ZoomButtonsController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "ZoomButtonsController"

    const-string v1, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->a:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->a(Z)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
