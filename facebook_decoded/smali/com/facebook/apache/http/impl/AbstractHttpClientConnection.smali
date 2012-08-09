.class public abstract Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpClientConnection;


# instance fields
.field private final a:Lcom/facebook/apache/http/impl/entity/EntitySerializer;

.field private final b:Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

.field private c:Lcom/facebook/apache/http/io/SessionInputBuffer;

.field private d:Lcom/facebook/apache/http/io/SessionOutputBuffer;

.field private e:Lcom/facebook/apache/http/io/EofSensor;

.field private f:Lcom/facebook/apache/http/io/HttpMessageParser;

.field private g:Lcom/facebook/apache/http/io/HttpMessageWriter;

.field private h:Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 79
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->d:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 80
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->e:Lcom/facebook/apache/http/io/EofSensor;

    .line 81
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->f:Lcom/facebook/apache/http/io/HttpMessageParser;

    .line 82
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->g:Lcom/facebook/apache/http/io/HttpMessageWriter;

    .line 83
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->h:Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    .line 95
    invoke-static {}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->h()Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->a:Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    .line 96
    invoke-static {}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->g()Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->b:Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    .line 97
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/io/HttpTransportMetrics;Lcom/facebook/apache/http/io/HttpTransportMetrics;)Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lcom/facebook/apache/http/io/HttpTransportMetrics;Lcom/facebook/apache/http/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/HttpMessageWriter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/apache/http/impl/io/HttpRequestWriter;-><init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/message/LineFormatter;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private static g()Lcom/facebook/apache/http/impl/entity/EntityDeserializer;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    new-instance v1, Lcom/facebook/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/entity/EntityDeserializer;-><init>(Lcom/facebook/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method private static h()Lcom/facebook/apache/http/impl/entity/EntitySerializer;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lcom/facebook/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/entity/EntitySerializer;-><init>(Lcom/facebook/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method private static i()Lcom/facebook/apache/http/HttpResponseFactory;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->e:Lcom/facebook/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->e:Lcom/facebook/apache/http/io/EofSensor;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/EofSensor;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/apache/http/HttpResponse;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 283
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->f:Lcom/facebook/apache/http/io/HttpMessageParser;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/HttpMessageParser;->a()Lcom/facebook/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpResponse;

    .line 284
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->h:Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->b()V

    .line 287
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/HttpMessageParser;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Lcom/facebook/apache/http/impl/io/HttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/apache/http/impl/io/HttpResponseParser;-><init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/message/LineParser;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 262
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->a:Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->d:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/apache/http/impl/entity/EntitySerializer;->a(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/HttpMessage;Lcom/facebook/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/apache/http/HttpRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 252
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->g:Lcom/facebook/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/HttpMessageWriter;->b(Lcom/facebook/apache/http/HttpMessage;)V

    .line 253
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->h:Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;->a()V

    .line 254
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 296
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->b:Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/apache/http/impl/entity/EntityDeserializer;->a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/HttpMessage;)Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 297
    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 298
    return-void
.end method

.method protected final a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    if-nez p2, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 226
    iput-object p2, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->d:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 227
    instance-of v0, p1, Lcom/facebook/apache/http/io/EofSensor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/facebook/apache/http/io/EofSensor;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->e:Lcom/facebook/apache/http/io/EofSensor;

    .line 230
    :cond_2
    invoke-static {}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->i()Lcom/facebook/apache/http/HttpResponseFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->a(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/HttpResponseFactory;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->f:Lcom/facebook/apache/http/io/HttpMessageParser;

    .line 234
    invoke-static {p2, p3}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->a(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->g:Lcom/facebook/apache/http/io/HttpMessageWriter;

    .line 236
    invoke-interface {p1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->b()Lcom/facebook/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    invoke-interface {p2}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->b()Lcom/facebook/apache/http/io/HttpTransportMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->a(Lcom/facebook/apache/http/io/HttpTransportMetrics;Lcom/facebook/apache/http/io/HttpTransportMetrics;)Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->h:Lcom/facebook/apache/http/impl/HttpConnectionMetricsImpl;

    .line 239
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 243
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->k()V

    .line 277
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->l()V

    .line 278
    return-void
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 321
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 309
    goto :goto_0

    .line 314
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    instance-of v0, v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    check-cast v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->g()Z

    move-result v0

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->c:Lcom/facebook/apache/http/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(I)Z

    .line 319
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->j()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract k()V
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpClientConnection;->d:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a()V

    .line 273
    return-void
.end method
