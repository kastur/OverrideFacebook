.class public Lcom/facebook/katana/util/FBLocationManager;
.super Ljava/lang/Object;
.source "FBLocationManager.java"


# static fields
.field protected static volatile a:Lcom/facebook/katana/util/ReentrantCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/util/ReentrantCallback",
            "<",
            "Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

.field protected static volatile c:Landroid/override/OverrideLocationManager;

.field protected static volatile d:Ljava/lang/Runnable;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public static a(I)Landroid/location/Location;
    .locals 4
    .parameter

    .prologue
    .line 165
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-object v0, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-object v2, v2, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 169
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-object v0, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    const-class v1, Lcom/facebook/katana/util/FBLocationManager;

    monitor-enter v1

    .line 277
    :try_start_0
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    if-nez v2, :cond_1

    .line 278
    monitor-exit v1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v2}, Lcom/facebook/katana/util/ReentrantCallback;->b()I

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "listeners still registered: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_3
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v2}, Lcom/facebook/katana/util/ReentrantCallback;->c()V

    .line 290
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-virtual {v2}, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b()V

    .line 291
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    const-string v1, "FBLocationManager"

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->e(Landroid/content/Context;)V

    .line 182
    const-class v1, Lcom/facebook/katana/util/FBLocationManager;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/facebook/katana/util/ReentrantCallback;

    invoke-direct {v0}, Lcom/facebook/katana/util/ReentrantCallback;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    .line 187
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/ReentrantCallback;->a(Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-virtual {v0}, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a()V

    .line 192
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-object v0, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-object v0, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;->a(Landroid/location/Location;)V

    .line 197
    :cond_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_2
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Lcom/facebook/katana/util/FBLocationManager$1;

    invoke-direct {v0}, Lcom/facebook/katana/util/FBLocationManager$1;-><init>()V

    .line 217
    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    .line 218
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V
    .locals 5
    .parameter

    .prologue
    .line 227
    const-class v1, Lcom/facebook/katana/util/FBLocationManager;

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    if-nez v0, :cond_0

    .line 230
    monitor-exit v1

    .line 267
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/ReentrantCallback;->b(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    iget-boolean v0, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lcom/facebook/katana/util/FBLocationManager$2;

    invoke-direct {v0}, Lcom/facebook/katana/util/FBLocationManager$2;-><init>()V

    .line 254
    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->f:Ljava/lang/Runnable;

    .line 255
    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 259
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    sget-object v2, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    .line 267
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 264
    :cond_2
    :try_start_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-virtual {v0}, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/location/Location;)Z
    .locals 4
    .parameter

    .prologue
    .line 527
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 472
    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v1

    .line 478
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    .line 480
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    .line 482
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 484
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    .line 488
    :goto_3
    if-nez v3, :cond_0

    .line 491
    if-eqz v0, :cond_5

    move v1, v2

    .line 492
    goto :goto_0

    :cond_2
    move v3, v2

    .line 480
    goto :goto_1

    :cond_3
    move v0, v2

    .line 482
    goto :goto_2

    :cond_4
    move v5, v2

    .line 484
    goto :goto_3

    .line 496
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 498
    if-lez v0, :cond_8

    move v4, v1

    .line 499
    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    .line 500
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    .line 503
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 509
    if-nez v3, :cond_0

    .line 511
    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    .line 513
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    .line 518
    goto :goto_0

    :cond_8
    move v4, v2

    .line 498
    goto :goto_4

    :cond_9
    move v3, v2

    .line 499
    goto :goto_5

    :cond_a
    move v0, v2

    .line 500
    goto :goto_6
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->e(Landroid/content/Context;)V

    .line 117
    :try_start_0
    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/override/OverrideLocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v1

    const-string v1, "LOCATION"

    const-string v2, "Caught IllegalArgumentException while checking GPS state"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->e(Landroid/content/Context;)V

    .line 133
    :try_start_0
    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/override/OverrideLocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    const-string v1, "LOCATION"

    const-string v2, "Caught IllegalArgumentException while checking network state"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    const-string v0, "LOCATION"

    const-string v2, "Caught IllegalArgumentException while checking networkconnectivity"

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 155
    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    if-nez v0, :cond_3

    .line 88
    :cond_0
    const-class v1, Lcom/facebook/katana/util/FBLocationManager;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    if-nez v0, :cond_1

    .line 90
    #const-string v0, "location"
	#invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
	#move-result-object v0
	#check-cast v0, Landroid/location/LocationManager;
	#sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;
	
	new-instance v0, Landroid/override/OverrideLocationManager;
	invoke-direct {v0, p0}, Landroid/override/OverrideLocationManager;-><init>(Landroid/content/Context;)V
	sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->c:Landroid/override/OverrideLocationManager;

    .line 94
    :cond_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-direct {v0}, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    .line 97
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_3
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
