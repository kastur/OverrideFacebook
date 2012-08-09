.class public Lcom/facebook/apache/http/impl/client/BasicResponseHandler;
.super Ljava/lang/Object;
.source "BasicResponseHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/ResponseHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 64
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    .line 65
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    .line 66
    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    .line 67
    invoke-static {v1}, Lcom/facebook/apache/http/util/EntityUtils;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 68
    new-instance v1, Lcom/facebook/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/facebook/apache/http/util/EntityUtils;->c(Lcom/facebook/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/facebook/apache/http/impl/client/BasicResponseHandler;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
