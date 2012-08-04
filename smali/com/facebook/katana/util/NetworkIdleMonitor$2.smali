.class final Lcom/facebook/katana/util/NetworkIdleMonitor$2;
.super Ljava/lang/Object;
.source "NetworkIdleMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$2;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    .line 111
    iget v0, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$2;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->c()V

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
