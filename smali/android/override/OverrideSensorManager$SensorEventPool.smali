.class Landroid/override/OverrideSensorManager$SensorEventPool;
.super Ljava/lang/Object;
.source "OverrideSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorEventPool"
.end annotation


# instance fields
.field private mNumItemsInPool:I

.field private final mPool:[Landroid/hardware/SensorEvent;

.field private final mPoolSize:I

.field final synthetic this$0:Landroid/override/OverrideSensorManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideSensorManager;I)V
    .locals 1
    .parameter
    .parameter "poolSize"

    .prologue
    .line 228
    iput-object p1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->this$0:Landroid/override/OverrideSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPoolSize:I

    .line 230
    iput p2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 231
    new-array v0, p2, [Landroid/hardware/SensorEvent;

    iput-object v0, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    .line 232
    return-void
.end method

.method private createSensorEvent()Landroid/hardware/SensorEvent;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 200
    const-class v1, Landroid/hardware/SensorEvent;

    .line 203
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/hardware/SensorEvent;>;"
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    .local v0, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/hardware/SensorEvent;>;"
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 213
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEvent;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 225
    .end local v0           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/hardware/SensorEvent;>;"
    :goto_0
    return-object v2

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v2, v4

    .line 207
    goto :goto_0

    .line 214
    .end local v3           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v0       #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/hardware/SensorEvent;>;"
    :catch_1
    move-exception v3

    .line 215
    .local v3, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v2, v4

    .line 216
    goto :goto_0

    .line 217
    .end local v3           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 218
    .local v3, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v2, v4

    .line 219
    goto :goto_0

    .line 220
    .end local v3           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 221
    .local v3, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v2, v4

    .line 222
    goto :goto_0
.end method


# virtual methods
.method getFromPool()Landroid/hardware/SensorEvent;
    .locals 4

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 237
    :try_start_0
    iget v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    if-lez v2, :cond_0

    .line 239
    iget v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPoolSize:I

    iget v3, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v2, v3

    .line 240
    .local v0, index:I
    iget-object v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aget-object v1, v2, v0

    .line 241
    iget-object v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 242
    iget v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 244
    .end local v0           #index:I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-nez v1, :cond_1

    .line 248
    invoke-direct {p0}, Landroid/override/OverrideSensorManager$SensorEventPool;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 250
    :cond_1
    return-object v1

    .line 244
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method returnToPool(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 254
    monitor-enter p0

    .line 256
    :try_start_0
    iget v1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    iget v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPoolSize:I

    if-ge v1, v2, :cond_0

    .line 258
    iget v1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 259
    iget v1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPoolSize:I

    iget v2, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v1, v2

    .line 260
    .local v0, index:I
    iget-object v1, p0, Landroid/override/OverrideSensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aput-object p1, v1, v0

    .line 262
    .end local v0           #index:I
    :cond_0
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
