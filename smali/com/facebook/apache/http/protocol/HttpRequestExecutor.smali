.class public Lcom/facebook/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static final a(Lcom/facebook/apache/http/HttpClientConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpClientConnection;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    if-nez p2, :cond_2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    const-string v0, "http.request"

    invoke-interface {p2, v0, p0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-interface {p1, p0, p2}, Lcom/facebook/apache/http/protocol/HttpProcessor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 175
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    if-nez p1, :cond_1

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    if-nez p2, :cond_2

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2
    const-string v0, "http.response"

    invoke-interface {p2, v0, p0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    invoke-interface {p1, p0, p2}, Lcom/facebook/apache/http/protocol/HttpProcessor;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 343
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string v1, "HEAD"

    invoke-interface {p0}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v1

    .line 89
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_0

    const/16 v2, 0x130

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    if-nez p2, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    if-nez p3, :cond_2

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    const-string v0, "http.connection"

    invoke-interface {p3, v0, p2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v0, "http.request_sent"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    invoke-interface {p2, p1}, Lcom/facebook/apache/http/HttpClientConnection;->a(Lcom/facebook/apache/http/HttpRequest;)V

    .line 220
    instance-of v0, p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_8

    .line 224
    const/4 v2, 0x1

    .line 225
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v3

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v3, v0}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpClientConnection;->b()V

    .line 233
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v3, "http.protocol.wait-for-continue"

    const/16 v4, 0x7d0

    invoke-interface {v0, v3, v4}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    .line 236
    invoke-interface {p2, v0}, Lcom/facebook/apache/http/HttpClientConnection;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpClientConnection;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v3

    .line 238
    invoke-static {p1, v3}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-interface {p2, v3}, Lcom/facebook/apache/http/HttpClientConnection;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 241
    :cond_3
    invoke-interface {v3}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 242
    const/16 v4, 0xc8

    if-ge v0, v4, :cond_6

    .line 243
    const/16 v4, 0x64

    if-eq v0, v4, :cond_4

    .line 244
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    move v1, v2

    .line 254
    :goto_0
    if-eqz v1, :cond_5

    .line 255
    check-cast p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p2, p1}, Lcom/facebook/apache/http/HttpClientConnection;->a(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V

    .line 258
    :cond_5
    :goto_1
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpClientConnection;->b()V

    .line 259
    const-string v1, "http.request_sent"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-object v0

    .line 250
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_7
    move-object v0, v1

    move v1, v2

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method private c(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    if-nez p2, :cond_1

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    if-nez p3, :cond_2

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    const/4 v1, 0x0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    if-eqz v1, :cond_3

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_5

    .line 298
    :cond_3
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpClientConnection;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 299
    invoke-static {p1, v1}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-interface {p2, v1}, Lcom/facebook/apache/http/HttpClientConnection;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 302
    :cond_4
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    goto :goto_0

    .line 306
    :cond_5
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p2, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    if-nez p3, :cond_2

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->b(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->c(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 127
    :cond_3
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpClientConnection;)V

    .line 130
    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-static {p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpClientConnection;)V

    .line 133
    throw v0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    invoke-static {p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpClientConnection;)V

    .line 136
    throw v0
.end method
