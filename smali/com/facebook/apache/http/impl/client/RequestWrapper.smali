.class public Lcom/facebook/apache/http/impl/client/RequestWrapper;
.super Lcom/facebook/apache/http/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lcom/facebook/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final c:Lcom/facebook/apache/http/HttpRequest;

.field private d:Ljava/net/URI;

.field private e:Ljava/lang/String;

.field private f:Lcom/facebook/apache/http/ProtocolVersion;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpRequest;)V
    .locals 5
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->c:Lcom/facebook/apache/http/HttpRequest;

    .line 71
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 72
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a([Lcom/facebook/apache/http/Header;)V

    .line 74
    instance-of v0, p1, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;

    .line 76
    check-cast p1, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->a_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->e:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f:Lcom/facebook/apache/http/ProtocolVersion;

    .line 89
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->g:I

    .line 90
    return-void

    .line 79
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v1

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {v1}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-interface {v1}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->e:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->c()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f:Lcom/facebook/apache/http/ProtocolVersion;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Lcom/facebook/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final a(Ljava/net/URI;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;

    .line 127
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f:Lcom/facebook/apache/http/ProtocolVersion;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f:Lcom/facebook/apache/http/ProtocolVersion;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f:Lcom/facebook/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public final g()Lcom/facebook/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a_()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->c()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    .line 133
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;

    if-eqz v3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 137
    :cond_1
    const-string v0, "/"

    .line 139
    :cond_2
    new-instance v3, Lcom/facebook/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lcom/facebook/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public final h()Ljava/net/URI;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->d:Ljava/net/URI;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/HeaderGroup;->a()V

    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->c:Lcom/facebook/apache/http/HttpRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a([Lcom/facebook/apache/http/Header;)V

    .line 96
    return-void
.end method

.method public final l()Lcom/facebook/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->c:Lcom/facebook/apache/http/HttpRequest;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->g:I

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;->g:I

    .line 164
    return-void
.end method
