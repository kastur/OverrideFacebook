.class public Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

.field private b:Z


# virtual methods
.method public final a(Ljava/io/InputStream;)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->b:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V

    .line 79
    const/4 v0, 0x0

    return v0

    .line 77
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V

    throw v0
.end method

.method public final b(Ljava/io/InputStream;)Z
    .locals 2
    .parameter

    .prologue
    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->b:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V

    .line 95
    const/4 v0, 0x0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V

    throw v0
.end method

.method public final b_()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicEofSensorWatcher;->a:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->j()V

    .line 102
    const/4 v0, 0x0

    return v0
.end method
