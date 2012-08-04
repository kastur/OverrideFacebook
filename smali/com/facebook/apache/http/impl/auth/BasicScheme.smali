.class public Lcom/facebook/apache/http/impl/auth/BasicScheme;
.super Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/auth/BasicScheme;->a:Z

    .line 67
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/auth/Credentials;Ljava/lang/String;Z)Lcom/facebook/apache/http/Header;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    if-nez p1, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-interface {p0}, Lcom/facebook/apache/http/auth/Credentials;->a()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {p0}, Lcom/facebook/apache/http/auth/Credentials;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/apache/http/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/codec/binary/Base64;->a([B)[B

    move-result-object v0

    .line 167
    new-instance v1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 168
    if-eqz p2, :cond_3

    .line 169
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 173
    :goto_1
    const-string v2, ": Basic "

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a([BII)V

    .line 176
    new-instance v0, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    return-object v0

    .line 162
    :cond_2
    invoke-interface {p0}, Lcom/facebook/apache/http/auth/Credentials;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_3
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    if-nez p2, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/auth/params/AuthParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/auth/BasicScheme;->e()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/apache/http/impl/auth/BasicScheme;->a(Lcom/facebook/apache/http/auth/Credentials;Ljava/lang/String;Z)Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "basic"

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/Header;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a(Lcom/facebook/apache/http/Header;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/auth/BasicScheme;->a:Z

    .line 91
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/auth/BasicScheme;->a:Z

    return v0
.end method
