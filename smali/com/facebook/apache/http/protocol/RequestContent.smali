.class public Lcom/facebook/apache/http/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    instance-of v0, p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "Transfer-encoding header already present"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "Content-Length header already present"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v1

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    :goto_0
    return-void

    .line 76
    :cond_4
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->b()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 77
    :cond_5
    sget-object v2, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Chunked transfer encoding not allowed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_6
    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-interface {p1, v1, v2}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 88
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/Header;)V

    .line 91
    :cond_7
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/Header;)V

    goto :goto_0

    .line 83
    :cond_8
    const-string v1, "Content-Length"

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
