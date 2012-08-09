.class public Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;
.source "ResponseProcessCookies.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 63
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/apache/http/HeaderIterator;Lcom/facebook/apache/http/cookie/CookieSpec;Lcom/facebook/apache/http/cookie/CookieOrigin;Lcom/facebook/apache/http/client/CookieStore;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {p1}, Lcom/facebook/apache/http/HeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v2

    .line 115
    :try_start_0
    invoke-interface {p2, v2, p3}, Lcom/facebook/apache/http/cookie/CookieSpec;->a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;
    :try_end_0
    .catch Lcom/facebook/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    invoke-interface {p2, v0, p3}, Lcom/facebook/apache/http/cookie/CookieSpec;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    .line 119
    invoke-interface {p4, v0}, Lcom/facebook/apache/http/client/CookieStore;->a(Lcom/facebook/apache/http/cookie/Cookie;)V

    .line 121
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cookie accepted: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/facebook/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    :try_start_2
    iget-object v4, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v4}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cookie rejected: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/facebook/apache/http/cookie/MalformedCookieException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 137
    :catch_1
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid cookie header: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 144
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    const-string v0, "http.cookie-spec"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/CookieSpec;

    .line 77
    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Cookie spec not specified in HTTP context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 105
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    const-string v1, "http.cookie-store"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/client/CookieStore;

    .line 84
    if-nez v1, :cond_4

    .line 85
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_4
    const-string v2, "http.cookie-origin"

    invoke-interface {p2, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/cookie/CookieOrigin;

    .line 91
    if-nez v2, :cond_5

    .line 92
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Cookie origin not specified in HTTP context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_5
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lcom/facebook/apache/http/HttpResponse;->d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v3

    .line 96
    invoke-direct {p0, v3, v0, v2, v1}, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a(Lcom/facebook/apache/http/HeaderIterator;Lcom/facebook/apache/http/cookie/CookieSpec;Lcom/facebook/apache/http/cookie/CookieOrigin;Lcom/facebook/apache/http/client/CookieStore;)V

    .line 99
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/CookieSpec;->a()I

    move-result v3

    if-lez v3, :cond_2

    .line 102
    const-string v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lcom/facebook/apache/http/HttpResponse;->d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v3

    .line 103
    invoke-direct {p0, v3, v0, v2, v1}, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;->a(Lcom/facebook/apache/http/HeaderIterator;Lcom/facebook/apache/http/cookie/CookieSpec;Lcom/facebook/apache/http/cookie/CookieOrigin;Lcom/facebook/apache/http/client/CookieStore;)V

    goto :goto_0
.end method
