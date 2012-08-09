.class public Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;
.super Ljava/lang/Object;
.source "GeocodingForMessageLocationDeferrableResult.java"


# instance fields
.field private a:Lcom/facebook/orca/location/GeolocationInfo;

.field private b:Lcom/facebook/orca/location/GeolocationInfo;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->a:Lcom/facebook/orca/location/GeolocationInfo;

    .line 19
    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->b:Lcom/facebook/orca/location/GeolocationInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->a:Lcom/facebook/orca/location/GeolocationInfo;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->b:Lcom/facebook/orca/location/GeolocationInfo;

    return-object v0
.end method
