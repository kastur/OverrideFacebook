.class Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;
.super Ljava/lang/Object;
.source "GeocodingForMessageLocationDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;->a:Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;->a:Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    check-cast p1, Lcom/facebook/orca/location/GeolocationInfo;

    invoke-static {v0, p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;->a:Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->b(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;Z)Z

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable$2;->a:Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    invoke-static {v0}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;->a(Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;)V

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
