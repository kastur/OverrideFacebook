.class public Lcom/facebook/katana/features/Gatekeeper;
.super Ljava/lang/Object;
.source "Gatekeeper.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/features/Gatekeeper$Settings;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/katana/features/Gatekeeper;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/facebook/katana/features/Gatekeeper$1;

    invoke-direct {v0}, Lcom/facebook/katana/features/Gatekeeper$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    sget-object v1, Lcom/facebook/katana/features/Gatekeeper;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {}, Lcom/facebook/katana/features/Gatekeeper;->b()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v6

    move-object v1, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Set;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/katana/features/Gatekeeper;->b()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/facebook/katana/features/Gatekeeper;->b()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    const/4 v2, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private static b()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v1, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->INSTANCE:Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 154
    :cond_0
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method
