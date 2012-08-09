.class public Lcom/facebook/apache/http/protocol/SyncBasicHttpContext;
.super Lcom/facebook/apache/http/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/apache/http/protocol/BasicHttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/apache/http/protocol/BasicHttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
