.class final Lcom/facebook/katana/util/FBLocationManager$2;
.super Ljava/lang/Object;
.source "FBLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    sget-object v1, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    invoke-virtual {v0}, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->b()V

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
