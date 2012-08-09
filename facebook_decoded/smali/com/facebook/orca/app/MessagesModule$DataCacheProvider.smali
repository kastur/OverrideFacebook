.class Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/DataCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/DataCache;
    .locals 7

    .prologue
    .line 848
    new-instance v0, Lcom/facebook/orca/cache/DataCache;

    const-class v1, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v3, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v4, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/location/LocationCache;

    const-class v5, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/AppConfigCache;

    const-class v6, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/cache/DataCache;-><init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/cache/ChatVisibilityCache;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;->b()Lcom/facebook/orca/cache/DataCache;

    move-result-object v0

    return-object v0
.end method
