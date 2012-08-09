.class public Lcom/facebook/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 66
    const/16 v1, 0x190

    if-eq v0, v1, :cond_2

    const/16 v1, 0x198

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_4

    .line 73
    :cond_2
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_3
    :goto_0
    return-void

    .line 78
    :cond_4
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v1

    .line 81
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    :cond_5
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_6
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpRequest;

    .line 90
    if-eqz v0, :cond_3

    .line 91
    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/HttpRequest;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    const-string v0, "Connection"

    invoke-interface {v1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_7
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpRequest;->c()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
