.class public abstract Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lcom/facebook/apache/http/auth/ContextAwareAuthScheme;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/apache/http/Header;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "WWW-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iput-boolean v1, p0, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a:Z

    .line 90
    :goto_0
    instance-of v0, p1, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 92
    check-cast p1, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {p1}, Lcom/facebook/apache/http/FormattedHeader;->b()I

    move-result v1

    .line 102
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v2

    invoke-static {v2}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_1
    const-string v2, "Proxy-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a:Z

    goto :goto_0

    .line 85
    :cond_2
    new-instance v1, Lcom/facebook/apache/http/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected header name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_3
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    new-instance v0, Lcom/facebook/apache/http/auth/MalformedChallengeException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 99
    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 106
    :goto_2
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v3

    invoke-static {v3}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v3

    if-nez v3, :cond_6

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 112
    new-instance v0, Lcom/facebook/apache/http/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid scheme identifier: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V

    .line 116
    return-void
.end method

.method protected abstract a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V
.end method

.method public final b(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
