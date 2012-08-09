.class Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/CacheServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/CacheServiceHandler;
    .locals 12

    .prologue
    .line 828
    new-instance v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    const-class v1, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    const-class v4, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/cache/AppConfigCache;

    const-class v5, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v6, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/notify/OrcaNotificationManager;

    const-class v7, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    const-class v8, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    const-class v9, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    const-class v10, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/cache/ChatVisibilityCache;

    const-class v11, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {p0, v11}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/cache/CacheServiceHandler;-><init>(Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Lcom/facebook/orca/cache/DeliveredReadReceiptManager;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/cache/SendMessageManager;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;->b()Lcom/facebook/orca/cache/CacheServiceHandler;

    move-result-object v0

    return-object v0
.end method
