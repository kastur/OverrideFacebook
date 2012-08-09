.class Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"

# interfaces
.implements Lcom/facebook/orca/mqtt/MqttClientCallback;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/mqtt/MqttClient;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/mqtt/MqttClient;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)Lcom/facebook/orca/mqtt/MqttClient;
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/mqtt/MqttClient;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;

    move-result-object v2

    monitor-enter v2

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;

    .line 379
    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 382
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.orca.push.mqtt.PUBLISH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    const-string v2, "topic_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method
