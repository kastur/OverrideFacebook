.class final enum Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;
.super Ljava/lang/Enum;
.source "Gatekeeper.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;",
        ">;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

.field private static final HOURLY_UPDATED_PROJECTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

.field private static final STORE_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->INSTANCE:Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    sget-object v1, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->INSTANCE:Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->$VALUES:[Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    .line 168
    const-class v0, Lcom/facebook/katana/features/Gatekeeper;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->STORE_TAG:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->getHourlyUpdatedProjects(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->HOURLY_UPDATED_PROJECTS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getHourlyUpdatedProjects(Ljava/util/Map;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/features/Gatekeeper$Settings;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 248
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    .line 250
    iget-object v4, v1, Lcom/facebook/katana/features/Gatekeeper$Settings;->a:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v5, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    if-ne v4, v5, :cond_0

    iget-object v1, v1, Lcom/facebook/katana/features/Gatekeeper$Settings;->b:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v4, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    if-ne v1, v4, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;
    .locals 1
    .parameter

    .prologue
    .line 164
    const-class v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->$VALUES:[Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    invoke-virtual {v0}, [Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;

    return-object v0
.end method


# virtual methods
.method public final deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->getCacheTtl(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public final getCacheTtl(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 209
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/Gatekeeper$Settings;

    .line 211
    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->STORE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received a request for an unknown project: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/katana/features/Gatekeeper$Settings;->a:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->mapPolicyToTtl(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public final getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-class v0, Lcom/facebook/katana/features/Gatekeeper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->getDiskKeySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDiskKeySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 184
    return-object p1
.end method

.method public final bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->getPersistentStoreTtl(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public final getPersistentStoreTtl(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/Gatekeeper$Settings;

    .line 223
    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->STORE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received a request for an unknown project: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/katana/features/Gatekeeper$Settings;->b:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->mapPolicyToTtl(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->initiateNetworkRequest(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initiateNetworkRequest(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->HOURLY_UPDATED_PROJECTS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->HOURLY_UPDATED_PROJECTS:Ljava/util/Set;

    .line 204
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;->a(Landroid/content/Context;Ljava/util/Set;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 201
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final mapPolicyToTtl(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Ljava/lang/Boolean;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    iget-boolean v0, p1, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->mCacheIfTrue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->mCacheIfFalse:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    :cond_1
    const v0, 0x1e13380

    .line 241
    :goto_0
    return v0

    :cond_2
    iget v0, p1, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->mFallbackTtl:I

    goto :goto_0
.end method

.method public final bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/features/Gatekeeper$GkManagedStoreClient;->staleDataAcceptable(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public final staleDataAcceptable(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method
