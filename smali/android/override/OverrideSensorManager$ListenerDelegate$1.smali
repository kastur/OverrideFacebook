.class Landroid/override/OverrideSensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "OverrideSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/override/OverrideSensorManager$ListenerDelegate;-><init>(Landroid/override/OverrideSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/override/OverrideSensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/override/OverrideSensorManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/override/OverrideSensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate$1;->this$1:Landroid/override/OverrideSensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/override/OverrideSensorManager$ListenerDelegate$1;->val$this$0:Landroid/override/OverrideSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 278
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    .line 279
    .local v0, t:Landroid/hardware/SensorEvent;
    iget-object v1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate$1;->this$1:Landroid/override/OverrideSensorManager$ListenerDelegate;

    #getter for: Landroid/override/OverrideSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Landroid/override/OverrideSensorManager$ListenerDelegate;->access$500(Landroid/override/OverrideSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 280
    iget-object v1, p0, Landroid/override/OverrideSensorManager$ListenerDelegate$1;->this$1:Landroid/override/OverrideSensorManager$ListenerDelegate;

    iget-object v1, v1, Landroid/override/OverrideSensorManager$ListenerDelegate;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->sPool:Landroid/override/OverrideSensorManager$SensorEventPool;
    invoke-static {v1}, Landroid/override/OverrideSensorManager;->access$600(Landroid/override/OverrideSensorManager;)Landroid/override/OverrideSensorManager$SensorEventPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/override/OverrideSensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    .line 281
    return-void
.end method
