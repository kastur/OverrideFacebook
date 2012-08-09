.class public Lcom/facebook/apache/http/impl/io/HttpRequestParser;
.super Lcom/facebook/apache/http/impl/io/AbstractMessageParser;
.source "HttpRequestParser.java"


# instance fields
.field private final b:Lcom/facebook/apache/http/HttpRequestFactory;

.field private final c:Lcom/facebook/apache/http/util/CharArrayBuffer;


# virtual methods
.method protected final a(Lcom/facebook/apache/http/io/SessionInputBuffer;)Lcom/facebook/apache/http/HttpMessage;
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 90
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Lcom/facebook/apache/http/ConnectionClosedException;

    const-string v1, "Client closed connection"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 95
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->a:Lcom/facebook/apache/http/message/LineParser;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/http/message/LineParser;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpRequestParser;->b:Lcom/facebook/apache/http/HttpRequestFactory;

    invoke-interface {v1, v0}, Lcom/facebook/apache/http/HttpRequestFactory;->a(Lcom/facebook/apache/http/RequestLine;)Lcom/facebook/apache/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
