.class Landroid/support/v4/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# instance fields
.field private synthetic a:Landroid/support/v4/content/LocalBroadcastManager;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager$1;->a:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/support/v4/content/LocalBroadcastManager;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
