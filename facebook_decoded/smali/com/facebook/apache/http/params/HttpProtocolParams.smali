.class public final Lcom/facebook/apache/http/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lcom/facebook/apache/http/params/CoreProtocolPNames;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    if-nez v0, :cond_1

    .line 61
    const-string v0, "US-ASCII"

    .line 63
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/ProtocolVersion;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 141
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 109
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;Z)Lcom/facebook/apache/http/params/HttpParams;

    .line 196
    return-void
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/ProtocolVersion;
    .locals 2
    .parameter

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->b:Lcom/facebook/apache/http/HttpVersion;

    .line 127
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/facebook/apache/http/ProtocolVersion;

    goto :goto_0
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 168
    return-void
.end method

.method public static c(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    const-string v0, "http.useragent"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static d(Lcom/facebook/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
