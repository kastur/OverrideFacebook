.class public Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lcom/facebook/apache/http/client/RedirectStrategy;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 68
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .parameter

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid redirect URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const-string v0, "location"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/HttpResponse;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received redirect response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

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

    .line 111
    :cond_1
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect requested to location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 116
    :cond_2
    invoke-static {v0}, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 118
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpResponse;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v2

    .line 121
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v2, v0}, Lcom/facebook/apache/http/params/HttpParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Relative redirect location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 129
    if-nez v0, :cond_4

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host not available in the HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 135
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 136
    invoke-static {v0, v1}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 142
    :cond_5
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v2, v0}, Lcom/facebook/apache/http/params/HttpParams;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    const-string v0, "http.protocol.redirect-locations"

    invoke-interface {p3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/client/RedirectLocations;

    .line 147
    if-nez v0, :cond_6

    .line 148
    new-instance v0, Lcom/facebook/apache/http/impl/client/RedirectLocations;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 149
    const-string v2, "http.protocol.redirect-locations"

    invoke-interface {p3, v2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_6
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 155
    :try_start_1
    new-instance v2, Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 167
    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/impl/client/RedirectLocations;->a(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 168
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

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move-object v2, v1

    .line 164
    goto :goto_0

    .line 171
    :cond_8
    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/impl/client/RedirectLocations;->b(Ljava/net/URI;)V

    .line 175
    :cond_9
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    .line 79
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v4, "location"

    invoke-interface {p2, v4}, Lcom/facebook/apache/http/HttpResponse;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v4

    .line 81
    packed-switch v2, :pswitch_data_0

    .line 92
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 83
    :pswitch_1
    const-string v2, "GET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HEAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-eqz v4, :cond_1

    move v0, v1

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v2, "GET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "HEAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 90
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;->c(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 194
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method
