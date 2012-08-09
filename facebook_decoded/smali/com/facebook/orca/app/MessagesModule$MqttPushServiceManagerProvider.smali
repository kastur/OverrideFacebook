.class Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;",
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
    .line 1867
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1867
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;
    .locals 3

    .prologue
    .line 1871
    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/presence/PresenceManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;->b()Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    move-result-object v0

    return-object v0
.end method
