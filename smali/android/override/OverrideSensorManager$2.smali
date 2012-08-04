.class Landroid/override/OverrideSensorManager$2;
.super Landroid/override/IOverrideSensorDataListener$Stub;
.source "OverrideSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/OverrideSensorManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideSensorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Landroid/override/OverrideSensorManager$2;->this$0:Landroid/override/OverrideSensorManager;

    invoke-direct {p0}, Landroid/override/IOverrideSensorDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorDataChanged(I[FJ)V
    .locals 6
    .parameter "sensorType"
    .parameter "values"
    .parameter "nano_timestamp"

    .prologue
    .line 185
    iget-object v2, p0, Landroid/override/OverrideSensorManager$2;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/override/OverrideSensorManager;->access$300(Landroid/override/OverrideSensorManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 186
    :try_start_0
    iget-object v2, p0, Landroid/override/OverrideSensorManager$2;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->sListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/override/OverrideSensorManager;->access$300(Landroid/override/OverrideSensorManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/override/OverrideSensorManager$ListenerDelegate;

    .line 187
    .local v1, listener:Landroid/override/OverrideSensorManager$ListenerDelegate;
    iget-object v2, p0, Landroid/override/OverrideSensorManager$2;->this$0:Landroid/override/OverrideSensorManager;

    invoke-virtual {v2, p1}, Landroid/override/OverrideSensorManager;->getSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p2, v4, v5}, Landroid/override/OverrideSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    goto :goto_0

    .line 189
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/override/OverrideSensorManager$ListenerDelegate;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-void
.end method
