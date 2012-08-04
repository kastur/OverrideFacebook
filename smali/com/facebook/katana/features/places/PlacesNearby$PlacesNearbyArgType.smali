.class public Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;
.super Ljava/lang/Object;
.source "PlacesNearby.java"


# instance fields
.field public a:Landroid/location/Location;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public e:J


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->a:Landroid/location/Location;

    .line 88
    iput-object p2, p0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->b:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->c:I

    .line 90
    iput-object p4, p0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->d:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 91
    iput-wide p5, p0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;->e:J

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "this is excluded because we never want multiple instances of the places nearby data."
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
