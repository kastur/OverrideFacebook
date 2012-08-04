.class final Lcom/facebook/katana/util/NetworkIdleMonitor$1;
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
    .line 78
    iput-object p1, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;-><init>(B)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->a:J

    .line 86
    iget v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    .line 87
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/util/NetworkIdleMonitor$1;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->b()V

    .line 92
    monitor-exit v1

    return-void

    .line 89
    :cond_0
    iget v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
