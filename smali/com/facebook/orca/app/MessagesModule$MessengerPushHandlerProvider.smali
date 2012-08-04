.class Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/MessengerPushHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1898
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1898
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/MessengerPushHandler;
    .locals 6

    .prologue
    .line 1902
    new-instance v0, Lcom/facebook/orca/push/MessengerPushHandler;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    const-class v2, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/notify/OrcaNotificationManager;

    const-class v3, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v4, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v3, v4}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/MessagesDataInitLock;

    const-class v5, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/MessengerPushHandler;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/notify/OrcaNotificationManager;Ljavax/inject/Provider;Lcom/facebook/orca/app/MessagesDataInitLock;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1898
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;->b()Lcom/facebook/orca/push/MessengerPushHandler;

    move-result-object v0

    return-object v0
.end method
