.class Landroid/override/OverrideSensorManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "OverrideSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/override/OverrideSensorManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    .line 271
    iput-object p1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->this$0:Landroid/override/OverrideSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    .line 272
    iput-object p2, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 274
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 275
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/override/OverrideSensorManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/override/OverrideSensorManager$ListenerDelegate$1;-><init>(Landroid/override/OverrideSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/override/OverrideSensorManager;)V

    iput-object v1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 283
    invoke-virtual {p0, p3}, Landroid/override/OverrideSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 284
    return-void

    .line 274
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    #getter for: Landroid/override/OverrideSensorManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/override/OverrideSensorManager;->access$400(Landroid/override/OverrideSensorManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$500(Landroid/override/OverrideSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method public getSensors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 1
    .parameter "sensor"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasSensor(Ljava/lang/String;)Z
    .locals 1
    .parameter "sensorName"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 7
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 312
    iget-object v3, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->sPool:Landroid/override/OverrideSensorManager$SensorEventPool;
    invoke-static {v3}, Landroid/override/OverrideSensorManager;->access$600(Landroid/override/OverrideSensorManager;)Landroid/override/OverrideSensorManager$SensorEventPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/override/OverrideSensorManager$SensorEventPool;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 313
    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 314
    .local v2, v:[F
    aget v3, p2, v5

    aput v3, v2, v5

    .line 315
    aget v3, p2, v4

    aput v3, v2, v4

    .line 316
    aget v3, p2, v6

    aput v3, v2, v6

    .line 317
    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 318
    aget-wide v3, p3, v5

    iput-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 319
    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 320
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 322
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    iget-object v3, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
