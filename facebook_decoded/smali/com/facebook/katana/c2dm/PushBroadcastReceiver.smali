.class public Lcom/facebook/katana/c2dm/PushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, p2}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/facebook/katana/c2dm/PushBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
