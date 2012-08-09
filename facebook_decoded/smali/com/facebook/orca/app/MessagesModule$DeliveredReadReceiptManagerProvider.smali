.class Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/DeliveredReadReceiptManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2427
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2427
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/DeliveredReadReceiptManager;
    .locals 5

    .prologue
    .line 2432
    new-instance v3, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;-><init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2427
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;->b()Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    move-result-object v0

    return-object v0
.end method
