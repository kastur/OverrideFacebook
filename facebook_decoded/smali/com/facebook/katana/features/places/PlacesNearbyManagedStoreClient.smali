.class Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;
.super Ljava/lang/Object;
.source "PlacesNearby.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
        "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/facebook/katana/features/places/PlacesNearby;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "places_nearby"

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/features/places/PlacesNearby;->a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/facebook/katana/service/method/FqlGetPlacesNearby;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to deserialize FqlGetPlacesNearby, currentlyunsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;->b()Lcom/facebook/katana/service/method/FqlGetPlacesNearby;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    const/16 v0, 0x708

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/facebook/katana/features/places/PlacesNearby;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    check-cast p2, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;

    invoke-static {p1, p2, p3}, Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;->a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
