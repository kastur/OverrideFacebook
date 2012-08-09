.class Lcom/facebook/orca/mqtt/MqttClient$1;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/mqtt/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient$1;->a:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient$1;->a:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-static {v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClient;)V

    .line 77
    return-void
.end method
