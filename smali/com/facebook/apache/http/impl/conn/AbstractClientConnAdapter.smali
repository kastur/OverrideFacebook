.class public abstract Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ManagedClientConnection;
.implements Lcom/facebook/apache/http/protocol/HttpContext;


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/ClientConnectionManager;

.field private volatile b:Lcom/facebook/apache/http/conn/OperatedClientConnection;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/conn/OperatedClientConnection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 101
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->b:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    .line 102
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 103
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 104
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J

    .line 105
    return-void
.end method

.method private a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->r()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 151
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 153
    :cond_1
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 285
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 215
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->t()V

    .line 216
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 323
    instance-of v1, v0, Lcom/facebook/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 324
    check-cast v0, Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 223
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->t()V

    .line 224
    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V

    .line 225
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 231
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->t()V

    .line 232
    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Lcom/facebook/apache/http/HttpRequest;)V

    .line 233
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 207
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->t()V

    .line 208
    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 209
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 342
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 343
    instance-of v1, v0, Lcom/facebook/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 344
    check-cast v0, Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 200
    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 194
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->b()V

    .line 195
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 176
    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->b(I)V

    .line 177
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 249
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 250
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->g()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 255
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 256
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->h()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized i()V
    .locals 4

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 304
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a(Lcom/facebook/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 4

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 312
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a(Lcom/facebook/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 261
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 262
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->i()Z

    move-result v0

    return v0
.end method

.method public final m()Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->p()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 267
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V

    .line 268
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    :goto_0
    return-object v1

    .line 272
    :cond_0
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->j()Ljava/net/Socket;

    move-result-object v0

    .line 273
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_1

    .line 274
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 276
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 281
    return-void
.end method

.method protected declared-synchronized o()V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->b:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    .line 113
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final p()Lcom/facebook/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->b:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected q()Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->a:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method protected final r()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->d:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractClientConnAdapter;->c:Z

    return v0
.end method
