.class public Lcom/facebook/apache/http/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    .line 70
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/http/params/HttpProtocolParams;->d(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method
