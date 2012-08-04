.class public Lcom/facebook/apache/http/message/BasicHttpRequest;
.super Lcom/facebook/apache/http/message/AbstractHttpMessage;
.source "BasicHttpRequest.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequest;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/facebook/apache/http/RequestLine;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/RequestLine;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->e:Lcom/facebook/apache/http/RequestLine;

    .line 99
    invoke-interface {p1}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->c:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->d:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/facebook/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicHttpRequest;-><init>(Lcom/facebook/apache/http/RequestLine;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final c()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/BasicHttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/facebook/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->e:Lcom/facebook/apache/http/RequestLine;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/BasicHttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/facebook/apache/http/message/BasicRequestLine;

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    iput-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->e:Lcom/facebook/apache/http/RequestLine;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->e:Lcom/facebook/apache/http/RequestLine;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpRequest;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
