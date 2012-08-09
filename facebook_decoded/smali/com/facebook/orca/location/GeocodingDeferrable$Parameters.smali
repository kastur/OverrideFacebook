.class public Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;
.super Ljava/lang/Object;
.source "GeocodingDeferrable.java"


# instance fields
.field private final a:Lcom/facebook/orca/location/Coordinates;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/Coordinates;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a:Lcom/facebook/orca/location/Coordinates;

    .line 35
    iput-boolean p2, p0, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->b:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->a:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable$Parameters;->b:Z

    return v0
.end method
