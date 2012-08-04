.class Lcom/facebook/orca/mqtt/MqttClient$4;
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
    .line 130
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->a:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->a:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-static {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b(Lcom/facebook/orca/mqtt/MqttClient;)V

    .line 134
    return-void
.end method
