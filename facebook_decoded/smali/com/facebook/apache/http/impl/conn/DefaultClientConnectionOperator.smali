.class public Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;

.field private b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry amy not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    .line 103
    return-void
.end method

.method private static a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {p1}, Lcom/facebook/apache/http/params/HttpConnectionParams;->c(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 236
    invoke-static {p1}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 238
    invoke-static {p1}, Lcom/facebook/apache/http/params/HttpConnectionParams;->e(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v1

    .line 239
    if-ltz v1, :cond_0

    .line 240
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 242
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/conn/OperatedClientConnection;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    if-nez p4, :cond_2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection must be open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->b()Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    if-nez v0, :cond_4

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Target scheme ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must have layered socket factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->b()Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    .line 211
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/conn/scheme/Scheme;->a(I)I

    move-result v1

    .line 213
    invoke-interface {p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->j()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    invoke-static {v1, p4}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 219
    invoke-interface {v0, v1}, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;->a(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {p1, v1, p2, v0, p4}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V

    .line 220
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/facebook/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, p2, v0}, Lcom/facebook/apache/http/conn/HttpHostConnectException;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1
.end method

.method public final a(Lcom/facebook/apache/http/conn/OperatedClientConnection;Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    if-nez p2, :cond_1

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target host may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    if-nez p5, :cond_2

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Connection must not be open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->b()Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v5

    .line 131
    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    .line 132
    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/conn/scheme/Scheme;->a(I)I

    move-result v7

    .line 133
    const/4 v1, 0x0

    :goto_0
    array-length v2, v6

    if-ge v1, v2, :cond_6

    .line 134
    aget-object v3, v6, v1

    .line 135
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    const/4 v2, 0x1

    .line 137
    :goto_1
    invoke-interface {v5}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->c()Ljava/net/Socket;

    move-result-object v4

    .line 138
    invoke-interface {p1, v4, p2}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;)V

    .line 140
    new-instance v8, Lcom/facebook/apache/http/impl/conn/HttpInetSocketAddress;

    invoke-direct {v8, p2, v3, v7}, Lcom/facebook/apache/http/impl/conn/HttpInetSocketAddress;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;I)V

    .line 141
    const/4 v3, 0x0

    .line 142
    if-eqz p3, :cond_4

    .line 143
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v9, 0x0

    invoke-direct {v3, p3, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 145
    :cond_4
    iget-object v9, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v9}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 146
    iget-object v9, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Connecting to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 149
    :cond_5
    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v5, v4, v8, v3, v0}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    .line 150
    if-eq v4, v3, :cond_a

    .line 152
    invoke-interface {p1, v3, p2}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;)V

    .line 154
    :goto_2
    move-object/from16 v0, p5

    invoke-static {v3, v0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 155
    invoke-interface {v5, v3}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->a(Ljava/net/Socket;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {p1, v3, v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->a(ZLcom/facebook/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 180
    :cond_6
    return-void

    .line 135
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v3

    .line 158
    if-eqz v2, :cond_8

    .line 159
    new-instance v1, Lcom/facebook/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, p2, v3}, Lcom/facebook/apache/http/conn/HttpHostConnectException;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1

    .line 163
    :catch_1
    move-exception v3

    .line 164
    if-eqz v2, :cond_8

    .line 165
    new-instance v1, Ljava/net/ConnectException;

    invoke-virtual {v3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v3}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 167
    new-instance v2, Lcom/facebook/apache/http/conn/HttpHostConnectException;

    invoke-direct {v2, p2, v1}, Lcom/facebook/apache/http/conn/HttpHostConnectException;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v2

    .line 170
    :catch_2
    move-exception v3

    .line 171
    if-eqz v2, :cond_8

    .line 172
    throw v3

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timed out. Connection will be retried using another IP address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 133
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v3, v4

    goto :goto_2
.end method
