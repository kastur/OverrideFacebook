.class public Lcom/facebook/apache/http/protocol/ResponseServer;
.super Ljava/lang/Object;
.source "ResponseServer.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const-string v0, "Server"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.origin-server"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    const-string v1, "Server"

    invoke-interface {p1, v1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method
