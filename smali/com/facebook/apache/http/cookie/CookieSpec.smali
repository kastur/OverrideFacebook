.class public interface abstract Lcom/facebook/apache/http/cookie/CookieSpec;
.super Ljava/lang/Object;
.source "CookieSpec.java"


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/Header;",
            "Lcom/facebook/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
.end method

.method public abstract b()Lcom/facebook/apache/http/Header;
.end method

.method public abstract b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
.end method
