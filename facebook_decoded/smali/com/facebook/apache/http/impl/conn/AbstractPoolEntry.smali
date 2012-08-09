.class public abstract Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;
.super Ljava/lang/Object;
.source "AbstractPoolEntry.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

.field protected volatile b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

.field protected volatile c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

.field private d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

.field private volatile e:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    .line 93
    invoke-interface {p1}, Lcom/facebook/apache/http/conn/ClientConnectionOperator;->a()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    .line 94
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    .line 96
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next proxy must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    if-nez p3, :cond_1

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->b(Lcom/facebook/apache/http/HttpHost;Z)V

    .line 238
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    if-nez p3, :cond_1

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection already open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    new-instance v0, Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-direct {v0, p1}, Lcom/facebook/apache/http/conn/routing/RouteTracker;-><init>(Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    .line 148
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->d()Lcom/facebook/apache/http/HttpHost;

    move-result-object v6

    .line 150
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    if-eqz v6, :cond_3

    move-object v2, v6

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->b()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/facebook/apache/http/conn/ClientConnectionOperator;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    .line 160
    if-nez v0, :cond_4

    .line 161
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Request aborted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v2

    goto :goto_0

    .line 164
    :cond_4
    if-nez v6, :cond_5

    .line 165
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->a(Z)V

    .line 170
    :goto_1
    return-void

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->i()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->a(Lcom/facebook/apache/http/HttpHost;Z)V

    goto :goto_1
.end method

.method public final a(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protocol layering without a tunnel not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple protocol layering not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/facebook/apache/http/conn/ClientConnectionOperator;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 281
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->c(Z)V

    .line 283
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->e:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public final a(ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v2}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->b(Z)V

    .line 202
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    .line 293
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->e:Ljava/lang/Object;

    .line 294
    return-void
.end method
