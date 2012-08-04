.class Lcom/facebook/orca/mqtt/MqttClient$2;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/facebook/orca/mqtt/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient$2;->b:Lcom/facebook/orca/mqtt/MqttClient;

    iput-object p2, p0, Lcom/facebook/orca/mqtt/MqttClient$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient$2;->b:Lcom/facebook/orca/mqtt/MqttClient;

    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V

    .line 106
    return-void
.end method
