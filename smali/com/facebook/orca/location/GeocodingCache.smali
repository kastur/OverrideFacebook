.class public Lcom/facebook/orca/location/GeocodingCache;
.super Ljava/lang/Object;
.source "GeocodingCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/location/GeolocationInfo;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/orca/location/GeolocationInfo;

    invoke-direct {v0}, Lcom/facebook/orca/location/GeolocationInfo;-><init>()V

    sput-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x384

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 36
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    return-void
.end method

.method private static a(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;",
            "Lcom/facebook/orca/location/Coordinates;",
            ")",
            "Lcom/facebook/orca/location/GeolocationInfo;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p2}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/GeolocationInfo;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v9

    .line 122
    :goto_0
    return-object v9

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/facebook/orca/location/GeolocationInfo;

    .line 108
    sget-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    if-eq v9, v0, :cond_1

    .line 109
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 112
    invoke-virtual {p2}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/facebook/orca/location/GeolocationInfo;->a()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/facebook/orca/location/GeolocationInfo;->b()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 118
    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x43fa

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    .line 122
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 0
    .parameter

    .prologue
    .line 93
    if-nez p0, :cond_0

    sget-object p0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/location/GeocodingCache;->a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 128
    return-void
.end method

.method public final a(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v1

    invoke-static {p2}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public final b(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/location/GeocodingCache;->a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v1

    invoke-static {p2}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method
