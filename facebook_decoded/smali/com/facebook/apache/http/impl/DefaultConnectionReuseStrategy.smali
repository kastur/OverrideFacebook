.class public Lcom/facebook/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lcom/facebook/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/HeaderIterator;)Lcom/facebook/apache/http/TokenIterator;
    .locals 1
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/facebook/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/message/BasicTokenIterator;-><init>(Lcom/facebook/apache/http/HeaderIterator;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-nez p2, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v3

    .line 81
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    const-string v4, "chunked"

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    .line 158
    :cond_2
    :goto_0
    return v1

    .line 87
    :cond_3
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    array-length v4, v0

    if-eq v4, v1, :cond_5

    :cond_4
    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_5
    aget-object v0, v0, v2

    .line 94
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    if-gez v0, :cond_6

    move v1, v2

    .line 96
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0

    .line 106
    :cond_6
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 108
    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v0

    .line 133
    :cond_7
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 135
    :try_start_1
    invoke-static {v0}, Lcom/facebook/apache/http/impl/DefaultConnectionReuseStrategy;->a(Lcom/facebook/apache/http/HeaderIterator;)Lcom/facebook/apache/http/TokenIterator;

    move-result-object v4

    move v0, v2

    .line 137
    :cond_8
    :goto_1
    invoke-interface {v4}, Lcom/facebook/apache/http/TokenIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 138
    invoke-interface {v4}, Lcom/facebook/apache/http/TokenIterator;->a()Ljava/lang/String;

    move-result-object v5

    .line 139
    const-string v6, "Close"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_9
    const-string v6, "Keep-Alive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/facebook/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_8

    move v0, v1

    .line 143
    goto :goto_1

    .line 146
    :cond_a
    if-nez v0, :cond_2

    .line 158
    :cond_b
    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v3, v0}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method
