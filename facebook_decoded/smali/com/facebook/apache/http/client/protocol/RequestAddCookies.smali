.class public Lcom/facebook/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :goto_0
    return-void

    .line 99
    :cond_2
    const-string v0, "http.cookie-store"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/CookieStore;

    .line 101
    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string v1, "http.cookiespec-registry"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    .line 109
    if-nez v1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "CookieSpec registry not specified in HTTP context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/HttpHost;

    .line 117
    if-nez v2, :cond_5

    .line 118
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Target host not set in the context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_5
    const-string v3, "http.connection"

    invoke-interface {p2, v3}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/apache/http/conn/HttpRoutedConnection;

    .line 125
    if-nez v3, :cond_6

    .line 126
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "HTTP connection not set in the context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_6
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/apache/http/client/params/HttpClientParams;->c(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v8

    .line 131
    iget-object v4, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v4}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 132
    iget-object v4, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "CookieSpec selected: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 136
    :cond_7
    instance-of v4, p1, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_a

    move-object v4, p1

    .line 137
    check-cast v4, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v4

    .line 147
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v9

    .line 148
    invoke-virtual {v2}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v6

    .line 149
    if-gez v6, :cond_15

    .line 150
    invoke-interface {v3}, Lcom/facebook/apache/http/conn/HttpRoutedConnection;->l()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 151
    invoke-virtual {v6}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->c()I

    move-result v6

    if-ne v6, v7, :cond_b

    .line 152
    invoke-interface {v3}, Lcom/facebook/apache/http/conn/HttpRoutedConnection;->h()I

    move-result v2

    .line 167
    :goto_2
    new-instance v6, Lcom/facebook/apache/http/cookie/CookieOrigin;

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/facebook/apache/http/conn/HttpRoutedConnection;->k()Z

    move-result v3

    invoke-direct {v6, v9, v2, v4, v3}, Lcom/facebook/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 174
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/cookie/CookieSpec;

    move-result-object v2

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/apache/http/client/CookieStore;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 181
    invoke-interface {v0, v4}, Lcom/facebook/apache/http/cookie/Cookie;->a(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 182
    invoke-interface {v2, v0, v6}, Lcom/facebook/apache/http/cookie/CookieSpec;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 183
    iget-object v8, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v8}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 184
    iget-object v8, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cookie "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 186
    :cond_9
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 140
    :cond_a
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid request URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :cond_b
    invoke-virtual {v2}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v6, "http"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 158
    const/16 v2, 0x50

    goto/16 :goto_2

    .line 159
    :cond_c
    const-string v6, "https"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 160
    const/16 v2, 0x1bb

    goto/16 :goto_2

    :cond_d
    move v2, v5

    .line 162
    goto/16 :goto_2

    .line 189
    :cond_e
    iget-object v8, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v8}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 190
    iget-object v8, p0, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cookie "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " expired"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 195
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 196
    invoke-interface {v2, v3}, Lcom/facebook/apache/http/cookie/CookieSpec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 198
    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/Header;)V

    goto :goto_4

    .line 202
    :cond_10
    invoke-interface {v2}, Lcom/facebook/apache/http/cookie/CookieSpec;->a()I

    move-result v4

    .line 203
    if-lez v4, :cond_13

    .line 205
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v5

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 206
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v5

    if-ne v4, v5, :cond_11

    instance-of v0, v0, Lcom/facebook/apache/http/cookie/SetCookie2;

    if-nez v0, :cond_14

    :cond_11
    move v0, v7

    :goto_6
    move v1, v0

    .line 207
    goto :goto_5

    .line 211
    :cond_12
    if-eqz v1, :cond_13

    .line 212
    invoke-interface {v2}, Lcom/facebook/apache/http/cookie/CookieSpec;->b()Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_13

    .line 215
    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/Header;)V

    .line 222
    :cond_13
    const-string v0, "http.cookie-spec"

    invoke-interface {p2, v0, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string v0, "http.cookie-origin"

    invoke-interface {p2, v0, v6}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_6

    :cond_15
    move v2, v6

    goto/16 :goto_2
.end method
