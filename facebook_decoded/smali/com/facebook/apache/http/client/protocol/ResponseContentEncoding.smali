.class public Lcom/facebook/apache/http/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    .line 79
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 80
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x-gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/client/entity/GzipDecompressingEntity;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/entity/GzipDecompressingEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const-string v2, "deflate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    new-instance v0, Lcom/facebook/apache/http/client/entity/DeflateDecompressingEntity;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/entity/DeflateDecompressingEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v2, "identity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/facebook/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Content-Coding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
