.class public Landroid/override/OverrideLocationManager;
.super Ljava/lang/Object;
.source "OverrideLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/override/OverrideLocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverrideLocationManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/override/OverrideLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/override/IOverrideLocationService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTaskeQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/override/OverrideLocationManager;->mListeners:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/override/OverrideLocationManager;->mTaskeQueue:Ljava/util/LinkedList;

    .line 201
    new-instance v1, Landroid/override/OverrideLocationManager$3;

    invoke-direct {v1, p0}, Landroid/override/OverrideLocationManager$3;-><init>(Landroid/override/OverrideLocationManager;)V

    iput-object v1, p0, Landroid/override/OverrideLocationManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 31
    const-string v1, "OverrideLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " constructed a new OverrideLocationManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Landroid/override/OverrideLocationManager;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.override.OverrideLocationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/override/OverrideLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 38
    return-void
.end method

.method private _handleRemoveUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 186
    const-string v2, "OverrideLocationManager"

    const-string v3, "_removeUpdates: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideLocationManager$ListenerTransport;

    .line 189
    .local v1, transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    if-nez v2, :cond_1

    .line 191
    const-string v2, "OverrideLocationManager"

    const-string v3, "_requestLocationUpdates: Location service is not available."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    invoke-interface {v2, v1}, Landroid/override/IOverrideLocationService;->removeUpdates(Landroid/override/IOverrideLocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "OverrideLocationManager"

    const-string v3, "_removeUpdates transport: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _handleRequestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .parameter "provider"
    .parameter "singleShot"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 164
    const-string v2, "OverrideLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_requestLocationUpdates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v3, p0, Landroid/override/OverrideLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideLocationManager$ListenerTransport;

    .line 168
    .local v1, transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    if-nez v1, :cond_0

    .line 169
    new-instance v1, Landroid/override/OverrideLocationManager$ListenerTransport;

    .end local v1           #transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p3, p4}, Landroid/override/OverrideLocationManager$ListenerTransport;-><init>(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 171
    .restart local v1       #transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    if-nez v2, :cond_1

    .line 174
    const-string v2, "OverrideLocationManager"

    const-string v4, "_requestLocationUpdates: Location service is not available."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    monitor-exit v3

    .line 183
    .end local v1           #transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    :goto_1
    return-void

    .line 176
    .restart local v1       #transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    :cond_1
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    iget-object v4, p0, Landroid/override/OverrideLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1, p2, v1}, Landroid/override/IOverrideLocationService;->requestLocationUpdates(Ljava/lang/String;Ljava/lang/String;ZLandroid/override/IOverrideLocationListener;)V

    goto :goto_0

    .line 178
    .end local v1           #transport:Landroid/override/OverrideLocationManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "OverrideLocationManager"

    const-string v3, "requestLocationUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private _removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 148
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    if-nez v2, :cond_0

    .line 149
    const-string v2, "OverrideLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deferring _removeUpdates "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object v0, p1

    .line 151
    .local v0, final_listener:Landroid/location/LocationListener;
    new-instance v1, Landroid/override/OverrideLocationManager$2;

    invoke-direct {v1, p0, v0}, Landroid/override/OverrideLocationManager$2;-><init>(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;)V

    .line 157
    .local v1, task:Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/override/OverrideLocationManager;->mTaskeQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v0           #final_listener:Landroid/location/LocationListener;
    .end local v1           #task:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Landroid/override/OverrideLocationManager;->_handleRemoveUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private _requestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .parameter "provider"
    .parameter "singleShot"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 129
    iget-object v1, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    if-nez v1, :cond_0

    .line 130
    const-string v1, "OverrideLocationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deferring _requestLocationUpdates: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object v2, p1

    .line 132
    .local v2, final_provider:Ljava/lang/String;
    move v3, p2

    .line 133
    .local v3, final_singleShot:Z
    move-object v4, p3

    .line 134
    .local v4, final_listener:Landroid/location/LocationListener;
    move-object v5, p4

    .line 135
    .local v5, final_looper:Landroid/os/Looper;
    new-instance v0, Landroid/override/OverrideLocationManager$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/override/OverrideLocationManager$1;-><init>(Landroid/override/OverrideLocationManager;Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 141
    .local v0, task:Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/override/OverrideLocationManager;->mTaskeQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v0           #task:Ljava/lang/Runnable;
    .end local v2           #final_provider:Ljava/lang/String;
    .end local v3           #final_singleShot:Z
    .end local v4           #final_listener:Landroid/location/LocationListener;
    .end local v5           #final_looper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/override/OverrideLocationManager;->_handleRequestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/override/OverrideLocationManager;Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/override/OverrideLocationManager;->_handleRequestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/override/OverrideLocationManager;->_handleRemoveUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method static synthetic access$202(Landroid/override/OverrideLocationManager;Landroid/override/IOverrideLocationService;)Landroid/override/IOverrideLocationService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;

    return-object p1
.end method

.method static synthetic access$300(Landroid/override/OverrideLocationManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/override/OverrideLocationManager;->mTaskeQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 103
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked addProximityAlert(double latitude, double longitude, float radius, long expiration, PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 1
    .parameter "criteria"
    .parameter "i_dont_know_what"

    .prologue
    .line 48
    const-string v0, "gps"

    return-object v0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .parameter "provider"

    .prologue
    .line 113
    const-string v1, "OverrideLocationManager"

    const-string v2, "Blocked getLastKnownLocation(String provider). Returned location of empire state!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, empire_state:Landroid/location/Location;
    const-wide v1, 0x40445fcee9dd7eccL

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 117
    const-wide v1, -0x3fad80fec56d5cfbL

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 118
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 41
    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 108
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked removeProximityAlert(PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 98
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked removeUpdates(PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/override/OverrideLocationManager;->_removeUpdates(Landroid/location/LocationListener;)V

    .line 95
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 70
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestLocationUpdates(long minTime, float minDistance, Criteria criteria, PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 60
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestLocationUpdates(long minTime, float minDistance, Criteria criteria, LocationListener listener, Looper looper)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 2
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 65
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestLocationUpdates(String provider, long minTime, float minDistance, PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p5, v1}, Landroid/override/OverrideLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 53
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5, p6}, Landroid/override/OverrideLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 57
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 89
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestSingleUpdate(Criteria criteria, PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 79
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestSingleUpdate(Criteria criteria, LocationListener listener, Looper looper)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "provider"
    .parameter "intent"

    .prologue
    .line 84
    const-string v0, "OverrideLocationManager"

    const-string v1, "Blocked requestSingleUpdate(String provider, PendingIntent intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/override/OverrideLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 76
    return-void
.end method
