.class public abstract Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;
.super Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/apache/http/message/BasicHeaderValueParser;->a:Lcom/facebook/apache/http/message/BasicHeaderValueParser;

    .line 68
    new-instance v1, Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 69
    invoke-interface {v0, p1, v1}, Lcom/facebook/apache/http/message/HeaderValueParser;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v1

    .line 70
    array-length v0, v1

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/apache/http/auth/MalformedChallengeException;

    const-string v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    .line 75
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 76
    iget-object v4, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    invoke-interface {v3}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/facebook/apache/http/HeaderElement;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    return-object v0
.end method
