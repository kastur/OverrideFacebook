.class public Lcom/facebook/apache/http/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/RedirectHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 80
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 92
    :goto_0
    return v0

    .line 84
    :pswitch_1
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpRequest;

    .line 86
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 90
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const-string v0, "location"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received redirect response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect requested to location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 117
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_9

    .line 126
    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v3, v0}, Lcom/facebook/apache/http/params/HttpParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Relative redirect location \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v2, Lcom/facebook/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid redirect URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    :cond_3
    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 133
    if-nez v0, :cond_4

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host not available in the HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    const-string v1, "http.request"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/HttpRequest;

    .line 142
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 144
    invoke-static {v0, v2}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 150
    :goto_0
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v3, v0}, Lcom/facebook/apache/http/params/HttpParams;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    const-string v0, "http.protocol.redirect-locations"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/client/RedirectLocations;

    .line 155
    if-nez v0, :cond_5

    .line 156
    new-instance v0, Lcom/facebook/apache/http/impl/client/RedirectLocations;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 157
    const-string v2, "http.protocol.redirect-locations"

    invoke-interface {p2, v2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_5
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 163
    :try_start_2
    new-instance v2, Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 175
    :goto_1
    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/impl/client/RedirectLocations;->a(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 176
    new-instance v0, Lcom/facebook/apache/http/client/CircularRedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Circular redirect to \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :catch_2
    move-exception v0

    .line 169
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v2, v1

    .line 172
    goto :goto_1

    .line 179
    :cond_7
    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/impl/client/RedirectLocations;->b(Ljava/net/URI;)V

    .line 183
    :cond_8
    return-object v1

    :cond_9
    move-object v1, v2

    goto :goto_0
.end method
