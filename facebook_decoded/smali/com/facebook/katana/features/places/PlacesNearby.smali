.class public Lcom/facebook/katana/features/places/PlacesNearby;
.super Ljava/lang/Object;
.source "PlacesNearby.java"


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/katana/features/places/PlacesNearby;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method private static a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/katana/features/places/PlacesNearby;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v1, Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;

    invoke-direct {v1}, Lcom/facebook/katana/features/places/PlacesNearbyManagedStoreClient;-><init>()V

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 69
    :cond_0
    sget-object v0, Lcom/facebook/katana/features/places/PlacesNearby;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;)Lcom/facebook/katana/service/method/FqlGetPlacesNearby;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {}, Lcom/facebook/katana/features/places/PlacesNearby;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;

    .line 24
    if-nez v0, :cond_1

    move-object v0, v1

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    iget-object v2, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->a:Landroid/location/Location;

    iget-object v3, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a:Landroid/location/Location;

    invoke-static {v2, v3}, Lcom/facebook/katana/features/places/PlacesNearby;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->d:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    iget-object v3, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->e:J

    iget-wide v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/facebook/katana/features/places/PlacesNearby;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/features/places/PlacesNearby;->a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-object v0, v1

    .line 35
    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 9
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
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->a:Landroid/location/Location;

    iget-object v3, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->b:Ljava/lang/String;

    iget v4, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->c:I

    iget-object v5, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->d:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    iget-wide v6, p1, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->e:J

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;JLcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
