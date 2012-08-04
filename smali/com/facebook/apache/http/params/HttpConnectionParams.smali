.class public final Lcom/facebook/apache/http/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"

# interfaces
.implements Lcom/facebook/apache/http/params/CoreConnectionPNames;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;)I
    .locals 2
    .parameter

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const-string v0, "http.socket.timeout"

    const v1, 0xea60

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;I)Lcom/facebook/apache/http/params/HttpParams;

    .line 67
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;Z)Lcom/facebook/apache/http/params/HttpParams;

    .line 126
    return-void
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;I)V
    .locals 2
    .parameter
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
    const-string v0, "http.socket.buffer-size"

    const/16 v1, 0x2000

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;I)Lcom/facebook/apache/http/params/HttpParams;

    .line 155
    return-void
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;Z)Lcom/facebook/apache/http/params/HttpParams;

    .line 242
    return-void
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const-string v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/facebook/apache/http/params/HttpParams;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    const-string v0, "http.connection.timeout"

    const v1, 0xea60

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;I)Lcom/facebook/apache/http/params/HttpParams;

    .line 212
    return-void
.end method

.method public static c(Lcom/facebook/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/facebook/apache/http/params/HttpParams;)I
    .locals 2
    .parameter

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    const-string v0, "http.socket.buffer-size"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Lcom/facebook/apache/http/params/HttpParams;)I
    .locals 2
    .parameter

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Lcom/facebook/apache/http/params/HttpParams;)I
    .locals 2
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
    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g(Lcom/facebook/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
