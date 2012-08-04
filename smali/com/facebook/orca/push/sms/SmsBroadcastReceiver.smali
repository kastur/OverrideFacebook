.class public Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-static {p1}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 27
    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-static {p1, p2}, Lcom/facebook/orca/push/sms/SmsReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->abortBroadcast()V

    .line 35
    :cond_0
    return-void
.end method
