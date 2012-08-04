.class Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/SendMessageManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/SendMessageManager;
    .locals 9

    .prologue
    .line 863
    new-instance v0, Lcom/facebook/orca/cache/SendMessageManager;

    const-class v1, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v2, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/notify/OrcaNotificationManager;

    const-class v4, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v5, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v6, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-class v7, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/common/util/Clock;

    const-class v8, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/common/util/Clock;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/cache/SendMessageManager;-><init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/common/util/Clock;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;->b()Lcom/facebook/orca/cache/SendMessageManager;

    move-result-object v0

    return-object v0
.end method
