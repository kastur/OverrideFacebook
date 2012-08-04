.class Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;
.super Ljava/lang/Object;
.source "LocateUserDeferrable.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/location/LocateUserDeferrable;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/location/LocateUserDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;->a:Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/location/LocateUserDeferrable;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocateUserDeferrable;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;->a:Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-static {v0, p1}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Lcom/facebook/orca/location/LocateUserDeferrable;Landroid/location/Location;)V

    .line 141
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 155
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatusChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
