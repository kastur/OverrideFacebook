.class final Lcom/facebook/katana/util/FBLocationManager$1;
.super Ljava/lang/Object;
.source "FBLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 208
    const-class v1, Lcom/facebook/katana/util/FBLocationManager;

    monitor-enter v1

    .line 209
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 210
    invoke-interface {v0}, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;->e_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 212
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/katana/util/FBLocationManager;->b:Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/katana/util/FBLocationManager$LocationDispatcher;->a:Z

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/util/FBLocationManager;->d:Ljava/lang/Runnable;

    .line 214
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
