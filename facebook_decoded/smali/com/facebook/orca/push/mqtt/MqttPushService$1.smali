.class Lcom/facebook/orca/push/mqtt/MqttPushService$1;
.super Landroid/content/BroadcastReceiver;
.source "MqttPushService.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-static {v0, p2}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Lcom/facebook/orca/push/mqtt/MqttPushService;Landroid/content/Intent;)V

    .line 168
    return-void
.end method
