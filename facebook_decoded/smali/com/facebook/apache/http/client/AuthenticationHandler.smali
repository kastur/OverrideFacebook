.class public interface abstract Lcom/facebook/apache/http/client/AuthenticationHandler;
.super Ljava/lang/Object;
.source "AuthenticationHandler.java"


# virtual methods
.method public abstract a(Ljava/util/Map;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/auth/AuthScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;",
            "Lcom/facebook/apache/http/HttpResponse;",
            "Lcom/facebook/apache/http/protocol/HttpContext;",
            ")",
            "Lcom/facebook/apache/http/auth/AuthScheme;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/facebook/apache/http/HttpResponse;)Z
.end method

.method public abstract b(Lcom/facebook/apache/http/HttpResponse;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method
