.class public Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;
.super Ljava/lang/Object;
.source "FBLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected a:Z

.field protected b:Landroid/location/Location;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->c:Z

    .line 318
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 328
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    .line 334
    iget-boolean v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->c:Z

    if-nez v0, :cond_0

    .line 336
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 341
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    iput-boolean v6, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->c:Z

    .line 358
    iput-boolean v6, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    .line 364
    :try_start_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iput-object v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    const-string v0, "LOCATION"

    const-string v1, "Caught IllegalArgumentException while requesting location updates."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    const-string v0, "LOCATION"

    const-string v1, "Caught IllegalArgumentException while checking last network location."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iput-object v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 396
    iput-boolean v1, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->c:Z

    .line 397
    iput-boolean v1, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    .line 398
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    .line 404
    iget-object v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iput-object p1, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    .line 413
    iget-boolean v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x4204

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 416
    iget-boolean v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->c:Z

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 418
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 419
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 424
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    .line 434
    :cond_2
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 435
    invoke-interface {v0, p1}, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;->a(Landroid/location/Location;)V

    goto :goto_1

    .line 439
    :cond_3
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/facebook/katana/util/FBLocationManager;->b()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    return-void
.end method
