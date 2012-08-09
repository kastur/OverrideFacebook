.class Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/presence/PresenceManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1728
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1728
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/presence/PresenceManager;
    .locals 9

    .prologue
    .line 1732
    new-instance v0, Lcom/facebook/orca/presence/PresenceManager;

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v2, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v3, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    const-class v5, Lcom/facebook/orca/annotations/IsPresenceEnabled;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v6, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/common/util/Clock;

    const-class v7, Ljava/lang/Boolean;

    const-class v8, Lcom/facebook/orca/annotations/IsMoreMobileFriendsEnabled;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/presence/PresenceManager;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/common/util/Clock;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1728
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;->b()Lcom/facebook/orca/presence/PresenceManager;

    move-result-object v0

    return-object v0
.end method
