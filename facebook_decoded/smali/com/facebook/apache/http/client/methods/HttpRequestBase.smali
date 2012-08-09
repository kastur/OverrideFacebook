.class public abstract Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.super Lcom/facebook/apache/http/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;
.implements Lcom/facebook/apache/http/client/methods/HttpUriRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private c:Ljava/util/concurrent/locks/Lock;

.field private d:Z

.field private e:Ljava/net/URI;

.field private f:Lcom/facebook/apache/http/conn/ClientConnectionRequest;

.field private g:Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/conn/ClientConnectionRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->d:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->g:Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;

    .line 114
    iput-object p1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->f:Lcom/facebook/apache/http/conn/ClientConnectionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->d:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->f:Lcom/facebook/apache/http/conn/ClientConnectionRequest;

    .line 129
    iput-object p1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->g:Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    return-void
.end method

.method public final a(Ljava/net/URI;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->e:Ljava/net/URI;

    .line 103
    return-void
.end method

.method public abstract a_()Ljava/lang/String;
.end method

.method public final c()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    .line 175
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->d:Z

    .line 177
    iput-object v2, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->g:Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;

    .line 178
    iput-object v2, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->f:Lcom/facebook/apache/http/conn/ClientConnectionRequest;

    .line 179
    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-static {v1}, Lcom/facebook/apache/http/client/utils/CloneUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/message/HeaderGroup;

    iput-object v1, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    .line 180
    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->b:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v1}, Lcom/facebook/apache/http/client/utils/CloneUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/params/HttpParams;

    iput-object v1, v0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 181
    return-object v0
.end method

.method public final g()Lcom/facebook/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a_()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v3

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 96
    :cond_1
    const-string v0, "/"

    .line 98
    :cond_2
    new-instance v3, Lcom/facebook/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lcom/facebook/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public final h()Ljava/net/URI;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->e:Ljava/net/URI;

    return-object v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->d:Z

    .line 146
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->f:Lcom/facebook/apache/http/conn/ClientConnectionRequest;

    .line 147
    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->g:Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iget-object v2, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ClientConnectionRequest;->a()V

    .line 159
    :cond_2
    if-eqz v1, :cond_0

    .line 161
    :try_start_2
    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
