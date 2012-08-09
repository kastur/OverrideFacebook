.class public Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;
.super Ljava/lang/Object;
.source "GeocodingForMessageLocationDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private a:Lcom/facebook/orca/common/async/Deferred;

.field private b:Lcom/facebook/orca/common/async/Deferred;

.field private c:Lcom/facebook/orca/common/async/Deferred;

.field private final d:Lcom/facebook/orca/location/LocationCache;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/GeocodingDeferrable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/location/GeolocationInfo;

.field private g:Lcom/facebook/orca/location/GeolocationInfo;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/LocationCache;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/location/LocationCache;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/GeocodingDeferrable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->d:Lcom/facebook/orca/location/LocationCache;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->e:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->g:Lcom/facebook/orca/location/GeolocationInfo;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->i:Z

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;

    iget-object v2, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->f:Lcom/facebook/orca/location/GeolocationInfo;

    iget-object v3, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->g:Lcom/facebook/orca/location/GeolocationInfo;

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;-><init>(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->f:Lcom/facebook/orca/location/GeolocationInfo;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    .line 47
    check-cast p1, Lcom/facebook/orca/location/Coordinates;

    .line 49
    iput-boolean v3, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->h:Z

    .line 50
    iput-boolean v3, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->i:Z

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->d:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->a()Landroid/location/Location;

    move-result-object v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    iput-boolean v4, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->h:Z

    .line 74
    :goto_0
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a:Lcom/facebook/orca/common/async/Deferred;

    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;-><init>(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-direct {v1, p1, v4}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;-><init>(Lcom/facebook/orca/location/Coordinates;Z)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->c:Lcom/facebook/orca/common/async/Deferred;

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b:Lcom/facebook/orca/common/async/Deferred;

    .line 59
    iget-object v2, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b:Lcom/facebook/orca/common/async/Deferred;

    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferrable;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b:Lcom/facebook/orca/common/async/Deferred;

    new-instance v2, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$1;-><init>(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b:Lcom/facebook/orca/common/async/Deferred;

    new-instance v2, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;

    invoke-static {v1}, Lcom/facebook/orca/location/Coordinates;->a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;-><init>(Lcom/facebook/orca/location/Coordinates;Z)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
