.class public Landroid/override/OverrideSensorManager;
.super Ljava/lang/Object;
.source "OverrideSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/override/OverrideSensorManager$ListenerDelegate;,
        Landroid/override/OverrideSensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverrideSensorManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainLooper:Landroid/os/Looper;

.field private mSensorDataListener:Landroid/override/IOverrideSensorDataListener$Stub;

.field private mService:Landroid/override/IOverrideSensorService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/override/OverrideSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private sPool:Landroid/override/OverrideSensorManager$SensorEventPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Landroid/override/OverrideSensorManager$1;

    invoke-direct {v1, p0}, Landroid/override/OverrideSensorManager$1;-><init>(Landroid/override/OverrideSensorManager;)V

    iput-object v1, p0, Landroid/override/OverrideSensorManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 181
    new-instance v1, Landroid/override/OverrideSensorManager$2;

    invoke-direct {v1, p0}, Landroid/override/OverrideSensorManager$2;-><init>(Landroid/override/OverrideSensorManager;)V

    iput-object v1, p0, Landroid/override/OverrideSensorManager;->mSensorDataListener:Landroid/override/IOverrideSensorDataListener$Stub;

    .line 29
    iput-object p1, p0, Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/override/OverrideSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 31
    new-instance v1, Landroid/override/OverrideSensorManager$SensorEventPool;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Landroid/override/OverrideSensorManager$SensorEventPool;-><init>(Landroid/override/OverrideSensorManager;I)V

    iput-object v1, p0, Landroid/override/OverrideSensorManager;->sPool:Landroid/override/OverrideSensorManager$SensorEventPool;

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.override.OverrideSensorService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/override/OverrideSensorManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/override/OverrideSensorManager;)Landroid/override/IOverrideSensorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    return-object v0
.end method

.method static synthetic access$002(Landroid/override/OverrideSensorManager;Landroid/override/IOverrideSensorService;)Landroid/override/IOverrideSensorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    return-object p1
.end method

.method static synthetic access$100(Landroid/override/OverrideSensorManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/override/OverrideSensorManager;)Landroid/override/IOverrideSensorDataListener$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->mSensorDataListener:Landroid/override/IOverrideSensorDataListener$Stub;

    return-object v0
.end method

.method static synthetic access$300(Landroid/override/OverrideSensorManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/override/OverrideSensorManager;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$600(Landroid/override/OverrideSensorManager;)Landroid/override/OverrideSensorManager$SensorEventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/override/OverrideSensorManager;->sPool:Landroid/override/OverrideSensorManager$SensorEventPool;

    return-object v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 8
    .parameter "sensor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 147
    .local v1, i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/override/OverrideSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    .end local v1           #i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :goto_0
    return v3

    .line 153
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    if-nez v5, :cond_2

    move v3, v4

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    iget-object v6, p0, Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/override/IOverrideSensorService;->disable_sensor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "OverrideSensorManager"

    const-string v5, "disableSensorLocked : RemoteException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 159
    goto :goto_0
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 7
    .parameter "sensor"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v4, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 130
    .local v1, i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/override/OverrideSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :try_start_0
    iget-object v4, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    if-nez v4, :cond_2

    .line 142
    .end local v1           #i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_1
    :goto_0
    return v3

    .line 134
    .restart local v1       #i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_2
    iget-object v4, p0, Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;

    iget-object v5, p0, Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/override/IOverrideSensorService;->enable_sensor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v3, 0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "OverrideSensorManager"

    const-string v5, "disableSensorLocked : RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v6, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 113
    :try_start_0
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 114
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 115
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 116
    .local v2, l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/override/OverrideSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 117
    iget-object v5, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    invoke-virtual {v2}, Landroid/override/OverrideSensorManager$ListenerDelegate;->getSensors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 120
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/override/OverrideSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2

    .line 125
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 114
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v2           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 5
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v4, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 92
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 93
    iget-object v3, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 94
    .local v1, l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/override/OverrideSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 95
    invoke-virtual {v1, p2}, Landroid/override/OverrideSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v3

    if-nez v3, :cond_2

    .line 98
    iget-object v3, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    .end local v1           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_2
    invoke-direct {p0, p2}, Landroid/override/OverrideSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 104
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 92
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSensor(I)Landroid/hardware/Sensor;
    .locals 3
    .parameter "sensorType"

    .prologue
    .line 38
    iget-object v1, p0, Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 39
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    return-object v1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/override/OverrideSensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 8
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    const/4 v5, 0x0

    .line 82
    :goto_0
    return v5

    .line 50
    :cond_1
    const/4 v5, 0x1

    .line 51
    .local v5, result:Z
    const/4 v0, -0x1

    .line 53
    .local v0, delay:I
    iget-object v7, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :try_start_0
    iget-object v6, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 57
    .local v1, i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/override/OverrideSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 58
    move-object v3, v1

    move-object v4, v3

    .line 64
    .end local v1           #i:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .local v4, l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :goto_1
    if-nez v4, :cond_4

    .line 65
    :try_start_1
    new-instance v3, Landroid/override/OverrideSensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/override/OverrideSensorManager$ListenerDelegate;-><init>(Landroid/override/OverrideSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .end local v4           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :try_start_2
    iget-object v6, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v6, p0, Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    const/4 v5, 0x0

    .line 80
    :cond_3
    :goto_2
    monitor-exit v7

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 73
    .end local v3           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_4
    :try_start_3
    invoke-virtual {v4, p2}, Landroid/override/OverrideSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 74
    invoke-direct {p0, p2, v0}, Landroid/override/OverrideSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 76
    invoke-virtual {v4, p2}, Landroid/override/OverrideSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    goto :goto_2

    .line 80
    .end local v3           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    goto :goto_3

    .end local v3           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :cond_5
    move-object v3, v4

    .end local v4           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    goto :goto_2

    :cond_6
    move-object v4, v3

    .end local v3           #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/override/OverrideSensorManager$ListenerDelegate;
    goto :goto_1
.end method
