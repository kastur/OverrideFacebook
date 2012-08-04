.class public Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;
.super Lcom/facebook/apache/http/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final b:Lcom/facebook/apache/commons/logging/Log;

.field private final c:Lcom/facebook/apache/http/HttpResponseFactory;

.field private final d:Lcom/facebook/apache/http/util/CharArrayBuffer;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/message/LineParser;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/facebook/apache/http/impl/io/AbstractMessageParser;-><init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/message/LineParser;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->b:Lcom/facebook/apache/commons/logging/Log;

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->c:Lcom/facebook/apache/http/HttpResponseFactory;

    .line 83
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 84
    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p4, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->e:I

    .line 86
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/apache/http/io/SessionInputBuffer;)Lcom/facebook/apache/http/HttpMessage;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 93
    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 98
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v2

    .line 99
    if-ne v2, v6, :cond_0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/facebook/apache/http/NoHttpResponseException;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-instance v3, Lcom/facebook/apache/http/message/ParserCursor;

    iget-object v4, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 104
    iget-object v4, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->a:Lcom/facebook/apache/http/message/LineParser;

    iget-object v5, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v4, v5, v3}, Lcom/facebook/apache/http/message/LineParser;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 106
    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->e:I

    if-lt v0, v2, :cond_2

    .line 109
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "The server failed to respond with a valid HTTP response"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Garbage in response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->a:Lcom/facebook/apache/http/message/LineParser;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1, v3}, Lcom/facebook/apache/http/message/LineParser;->c(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/DefaultResponseParser;->c:Lcom/facebook/apache/http/HttpResponseFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/apache/http/HttpResponseFactory;->a(Lcom/facebook/apache/http/StatusLine;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
