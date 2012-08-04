.class public Lcom/facebook/orca/location/Coordinates;
.super Ljava/lang/Object;
.source "Coordinates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/location/Coordinates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:D

.field private final b:D

.field private final c:Ljava/lang/Double;

.field private final d:Ljava/lang/Float;

.field private final e:Ljava/lang/Float;

.field private final f:Ljava/lang/Float;

.field private final g:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/facebook/orca/location/Coordinates$1;

    invoke-direct {v0}, Lcom/facebook/orca/location/Coordinates$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/location/Coordinates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->a:D

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->b:D

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->c:Ljava/lang/Double;

    .line 41
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->d:Ljava/lang/Float;

    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->e:Ljava/lang/Float;

    .line 43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->f:Ljava/lang/Float;

    .line 44
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->g:Ljava/lang/Float;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/Coordinates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/location/CoordinatesBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->a:D

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->b:D

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->c()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->c:Ljava/lang/Double;

    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->d()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->d:Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->e()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->e:Ljava/lang/Float;

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->f()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->f:Ljava/lang/Float;

    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/location/CoordinatesBuilder;->g()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/Coordinates;->g:Ljava/lang/Float;

    .line 35
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;
    .locals 3
    .parameter

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/orca/location/Coordinates;->newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->d(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->h()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    goto :goto_0
.end method

.method public static newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/orca/location/CoordinatesBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->a:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->b:D

    return-wide v0
.end method

.method public final c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->c:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->d:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->e:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->f:Ljava/lang/Float;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->f:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->g:Ljava/lang/Float;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->g:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    iget-wide v0, p0, Lcom/facebook/orca/location/Coordinates;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->c:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->d:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->e:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->f:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/location/Coordinates;->g:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 138
    return-void
.end method
