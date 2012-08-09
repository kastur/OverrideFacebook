.class public Lcom/facebook/apache/http/impl/SocketHttpClientConnection;
.super Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpInetConnection;


# instance fields
.field private volatile a:Z

.field private volatile b:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionInputBuffer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p3}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 156
    invoke-static {p2}, Lcom/facebook/apache/http/params/HttpConnectionParams;->d(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v0

    .line 158
    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionInputBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionOutputBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    .line 164
    return-void
.end method

.method protected b(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionOutputBuffer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p3}, Lcom/facebook/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->k()V

    .line 208
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    .line 244
    iget-object v1, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 253
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :goto_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    .line 233
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 237
    :cond_0
    return-void
.end method

.method public final g()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected j()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    return-object v0
.end method

.method protected final k()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method protected final m()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method
