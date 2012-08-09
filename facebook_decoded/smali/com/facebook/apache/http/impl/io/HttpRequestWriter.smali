.class public Lcom/facebook/apache/http/impl/io/HttpRequestWriter;
.super Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/message/LineFormatter;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;-><init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/message/LineFormatter;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/apache/http/HttpMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;->c:Lcom/facebook/apache/http/message/LineFormatter;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    check-cast p1, Lcom/facebook/apache/http/HttpRequest;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/message/LineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/RequestLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 57
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    .line 58
    return-void
.end method
