.class Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1834
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1834
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
    .locals 12

    .prologue
    .line 1838
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    const-class v3, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    iget-object v5, p0, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v5}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const-class v6, Ljava/lang/String;

    const-class v7, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v6

    const-class v7, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v7

    const-class v8, Lcom/facebook/orca/mqtt/MqttSsl;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/mqtt/MqttSsl;

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Lcom/facebook/orca/annotations/IsPresenceEnabled;

    invoke-virtual {p0, v9, v10}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    const-class v11, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-virtual {p0, v10, v11}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Ljavax/inject/Provider;Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;Landroid/net/ConnectivityManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/mqtt/MqttSsl;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;->b()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    move-result-object v0

    return-object v0
.end method
