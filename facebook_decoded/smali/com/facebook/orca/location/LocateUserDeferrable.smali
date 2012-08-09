.class public Lcom/facebook/orca/location/LocateUserDeferrable;
.super Ljava/lang/Object;
.source "LocateUserDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/location/LocationManager;

.field private final c:Lcom/facebook/orca/location/LocationCache;

.field private d:Lcom/facebook/orca/server/GetDeviceLocationParams;

.field private e:Lcom/facebook/orca/common/async/Deferred;

.field private f:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

.field private g:Landroid/location/Location;

.field private h:Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Lcom/facebook/orca/location/LocationCache;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->a:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->b:Landroid/location/LocationManager;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->c:Lcom/facebook/orca/location/LocationCache;

    .line 44
    invoke-virtual {p2}, Lcom/facebook/orca/location/LocationCache;->a()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    .line 45
    new-instance v0, Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocateUserDeferrable;B)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->h:Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

    .line 46
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->h:Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 78
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->c:Lcom/facebook/orca/location/LocationCache;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/LocationCache;->a(Landroid/location/Location;)V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserDeferrable;->c()V

    .line 86
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->d:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a()V

    .line 91
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Z)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocateUserDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserDeferrable;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocateUserDeferrable;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->i:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    .line 114
    if-eqz p1, :cond_4

    .line 115
    const-string v0, "orca:LocationAsyncTask"

    const-string v2, "Timed out waiting for location"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 125
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 126
    const-string v0, "orca:LocationAsyncTask"

    const-string v2, "Finished"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-boolean v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->i:Z

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->e:Lcom/facebook/orca/common/async/Deferred;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->d:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v3}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 120
    const-string v0, "orca:LocationAsyncTask"

    const-string v2, "Location requirement met"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 121
    goto :goto_1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->e:Lcom/facebook/orca/common/async/Deferred;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0x1d4c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 167
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    move v1, v2

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    .line 179
    cmp-long v0, v4, v7

    if-lez v0, :cond_2

    move v3, v1

    .line 180
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 181
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    .line 185
    :goto_3
    if-nez v3, :cond_0

    .line 188
    if-eqz v0, :cond_5

    move v1, v2

    .line 189
    goto :goto_0

    :cond_2
    move v3, v2

    .line 179
    goto :goto_1

    :cond_3
    move v0, v2

    .line 180
    goto :goto_2

    :cond_4
    move v5, v2

    .line 181
    goto :goto_3

    .line 193
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 194
    if-lez v0, :cond_8

    move v4, v1

    .line 195
    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    .line 196
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    .line 199
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 203
    if-nez v3, :cond_0

    .line 205
    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    .line 207
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    .line 210
    goto :goto_0

    :cond_8
    move v4, v2

    .line 194
    goto :goto_4

    :cond_9
    move v3, v2

    .line 195
    goto :goto_5

    :cond_a
    move v0, v2

    .line 196
    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 218
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a()V

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Z)V

    .line 97
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->f:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->f:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->g:Landroid/location/Location;

    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/server/OrcaServiceProgressCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 58
    check-cast p1, Lcom/facebook/orca/server/GetDeviceLocationParams;

    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->d:Lcom/facebook/orca/server/GetDeviceLocationParams;

    .line 59
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->e:Lcom/facebook/orca/common/async/Deferred;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->h:Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->h:Lcom/facebook/orca/location/LocateUserDeferrable$MyLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserDeferrable;->c()V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->a:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/location/LocateUserDeferrable$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/LocateUserDeferrable$1;-><init>(Lcom/facebook/orca/location/LocateUserDeferrable;)V

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->d:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v2}, Lcom/facebook/orca/server/GetDeviceLocationParams;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->e:Lcom/facebook/orca/common/async/Deferred;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable;->f:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 54
    return-void
.end method
