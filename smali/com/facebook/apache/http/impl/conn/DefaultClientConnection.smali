.class public Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;
.super Lcom/facebook/apache/http/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/OperatedClientConnection;
.implements Lcom/facebook/apache/http/protocol/HttpContext;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;

.field private final b:Lcom/facebook/apache/commons/logging/Log;

.field private final c:Lcom/facebook/apache/commons/logging/Log;

.field private volatile d:Ljava/net/Socket;

.field private e:Z

.field private volatile f:Z

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 75
    const-string v0, "com.facebook.apache.http.headers"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    .line 76
    const-string v0, "com.facebook.apache.http.wire"

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/String;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->c:Lcom/facebook/apache/commons/logging/Log;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->g:Ljava/util/Map;

    .line 96
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/HttpResponse;
    .locals 8

    .prologue
    .line 247
    invoke-super {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receiving response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<< "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 253
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v2

    .line 254
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 255
    iget-object v5, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<< "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-object v1
.end method

.method protected final a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/HttpMessageParser;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;-><init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/message/LineParser;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected final a(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionInputBuffer;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 177
    const/16 p2, 0x2000

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionInputBuffer;

    move-result-object v1

    .line 183
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;

    new-instance v2, Lcom/facebook/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-direct {v2, v3}, Lcom/facebook/apache/http/impl/conn/Wire;-><init>(Lcom/facebook/apache/commons/logging/Log;)V

    invoke-static {p3}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/impl/conn/Wire;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/HttpRequest;)V
    .locals 7
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->a(Lcom/facebook/apache/http/HttpRequest;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 269
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v1

    .line 270
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 271
    iget-object v4, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public final a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->m()V

    .line 113
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 114
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->f:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->k()V

    .line 228
    if-nez p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-nez p4, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    .line 238
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 239
    invoke-virtual {p0, p1, p4}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 241
    :cond_2
    iput-boolean p3, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->e:Z

    .line 243
    return-void
.end method

.method public final a(ZLcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->m()V

    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->e:Z

    .line 131
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 132
    return-void
.end method

.method protected final b(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionOutputBuffer;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 198
    const/16 p2, 0x2000

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->b(Ljava/net/Socket;ILcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/SessionOutputBuffer;

    move-result-object v1

    .line 204
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;

    new-instance v2, Lcom/facebook/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-direct {v2, v3}, Lcom/facebook/apache/http/impl/conn/Wire;-><init>(Lcom/facebook/apache/commons/logging/Log;)V

    invoke-static {p3}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/impl/conn/Wire;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->c()V

    .line 165
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Connection closed"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->f:Z

    .line 151
    :try_start_0
    invoke-super {p0}, Lcom/facebook/apache/http/impl/SocketHttpClientConnection;->f()V

    .line 152
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Connection shut down"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "I/O error shutting down connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->e:Z

    return v0
.end method

.method public final j()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;->d:Ljava/net/Socket;

    return-object v0
.end method
