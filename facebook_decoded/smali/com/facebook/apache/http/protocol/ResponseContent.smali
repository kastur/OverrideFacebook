.class public Lcom/facebook/apache/http/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


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
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "Transfer-encoding header already present"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "Content-Length header already present"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_7

    .line 71
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    .line 72
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v0, v4}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 73
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-interface {p1, v0, v2}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    :goto_0
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/Header;)V

    .line 83
    :cond_4
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/Header;)V

    .line 95
    :cond_5
    :goto_1
    return-void

    .line 74
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 75
    const-string v0, "Content-Length"

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_7
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 89
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0x130

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_5

    .line 92
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
