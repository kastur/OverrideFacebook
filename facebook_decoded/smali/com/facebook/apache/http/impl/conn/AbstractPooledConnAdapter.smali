.class public abstract Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;
.super Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# instance fields
.field protected volatile a:Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p2, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 64
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a:Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    .line 65
    return-void
.end method

.method private a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->r()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 135
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a(Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V

    .line 136
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 121
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 122
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 142
    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public final a(ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a(ZLcom/facebook/apache/http/params/HttpParams;)V

    .line 129
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->b()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->c()V

    .line 154
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->b()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->f()V

    .line 165
    :cond_1
    return-void
.end method

.method public final l()Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a(Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 113
    iget-object v1, v0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->h()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized o()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a:Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    .line 107
    invoke-super {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->a:Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    return-object v0
.end method
