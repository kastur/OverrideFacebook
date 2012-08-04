.class Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MqttPushServiceManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V

    .line 51
    return-void
.end method
