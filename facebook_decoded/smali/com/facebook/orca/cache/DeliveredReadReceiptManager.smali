.class public Lcom/facebook/orca/cache/DeliveredReadReceiptManager;
.super Ljava/lang/Object;
.source "DeliveredReadReceiptManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    .line 39
    iput-object p4, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 40
    return-void
.end method

.method private a()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 118
    const-string v1, "msg_sender_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "mid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/send_delivery_receipt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 87
    :goto_0
    if-nez v0, :cond_1

    .line 98
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/facebook/orca/server/ReadReceiptParams;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, p3, p4}, Lcom/facebook/orca/server/ReadReceiptParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;J)V

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v3, "readReceiptParams"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v2, "read_receipt"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 58
    :goto_0
    if-nez v0, :cond_1

    .line 69
    :goto_1
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/facebook/orca/server/DeliveredReceiptParams;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, p3}, Lcom/facebook/orca/server/DeliveredReceiptParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v3, "deliveredReceiptParms"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    const-string v2, "delivered_receipt"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method
