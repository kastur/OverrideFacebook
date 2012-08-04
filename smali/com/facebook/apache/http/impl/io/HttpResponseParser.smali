.class public Lcom/facebook/apache/http/impl/io/HttpResponseParser;
.super Lcom/facebook/apache/http/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"


# instance fields
.field private final b:Lcom/facebook/apache/http/HttpResponseFactory;

.field private final c:Lcom/facebook/apache/http/util/CharArrayBuffer;


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

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p3, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->b:Lcom/facebook/apache/http/HttpResponseFactory;

    .line 82
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/apache/http/io/SessionInputBuffer;)Lcom/facebook/apache/http/HttpMessage;
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 90
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Lcom/facebook/apache/http/NoHttpResponseException;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 96
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->a:Lcom/facebook/apache/http/message/LineParser;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->c:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/http/message/LineParser;->c(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;->b:Lcom/facebook/apache/http/HttpResponseFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/apache/http/HttpResponseFactory;->a(Lcom/facebook/apache/http/StatusLine;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
