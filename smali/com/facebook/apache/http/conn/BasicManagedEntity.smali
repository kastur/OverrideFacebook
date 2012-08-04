.class public Lcom/facebook/apache/http/conn/BasicManagedEntity;
.super Lcom/facebook/apache/http/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;
.implements Lcom/facebook/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpEntity;Lcom/facebook/apache/http/conn/ManagedClientConnection;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p2, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 78
    iput-boolean p3, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->c:Z

    .line 79
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->c:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/facebook/apache/http/util/EntityUtils;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    throw v0
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iput-object v1, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 186
    :cond_0
    return-void

    .line 183
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;->a(Ljava/io/OutputStream;)V

    .line 115
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->k()V

    .line 116
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 139
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    .line 144
    const/4 v0, 0x0

    return v0

    .line 142
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    throw v0
.end method

.method public final b(Ljava/io/InputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 149
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 153
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    .line 158
    const/4 v0, 0x0

    return v0

    .line 156
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->l()V

    throw v0
.end method

.method public final b_()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->j()V

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/facebook/apache/http/conn/EofSensorInputStream;

    iget-object v1, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->f()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public final h()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->k()V

    .line 110
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/BasicManagedEntity;->k()V

    .line 120
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-object v1, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 131
    :cond_0
    return-void

    .line 128
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/apache/http/conn/BasicManagedEntity;->b:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    throw v0
.end method
