.class public Lcom/facebook/orca/location/GeocodingDeferrable;
.super Ljava/lang/Object;
.source "GeocodingDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/location/GeocodingCache;

.field private c:Lcom/facebook/orca/common/async/Deferred;

.field private d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

.field private e:Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/location/GeocodingCache;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->b:Lcom/facebook/orca/location/GeocodingCache;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingDeferrable;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/location/Address;)V
    .locals 7
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/orca/location/GeolocationInfo;

    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v1}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/location/GeolocationInfo;-><init>(Lcom/facebook/orca/location/Coordinates;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v1}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->b:Lcom/facebook/orca/location/GeocodingCache;

    iget-object v2, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v2}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    .line 102
    const-string v0, "orca:GeocodingDeferrable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Geocoding complete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->b:Lcom/facebook/orca/location/GeocodingCache;

    iget-object v2, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v2}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingDeferrable;Landroid/location/Address;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingDeferrable;->a(Landroid/location/Address;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 61
    check-cast p1, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    .line 62
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v0}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->b:Lcom/facebook/orca/location/GeocodingCache;

    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v1}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    .line 72
    :goto_0
    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;-><init>(Lcom/facebook/orca/location/GeocodingDeferrable;B)V

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->e:Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->e:Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/orca/location/Coordinates;

    iget-object v2, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v2}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->b:Lcom/facebook/orca/location/GeocodingCache;

    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->d:Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-virtual {v1}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method
