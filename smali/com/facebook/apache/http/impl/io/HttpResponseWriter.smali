.class public Lcom/facebook/apache/http/impl/io/HttpResponseWriter;
.super Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;
.source "HttpResponseWriter.java"


# virtual methods
.method protected final a(Lcom/facebook/apache/http/HttpMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpResponseWriter;->c:Lcom/facebook/apache/http/message/LineFormatter;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpResponseWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    check-cast p1, Lcom/facebook/apache/http/HttpResponse;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/message/LineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/StatusLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 57
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/HttpResponseWriter;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/HttpResponseWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    .line 58
    return-void
.end method
