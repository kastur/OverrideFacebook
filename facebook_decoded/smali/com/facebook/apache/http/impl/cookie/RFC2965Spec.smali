.class public Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;
.super Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 68
    const-string v0, "domain"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 69
    const-string v0, "port"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 70
    const-string v0, "commenturl"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 71
    const-string v0, "discard"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 72
    const-string v0, "version"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 73
    return-void
.end method

.method private b([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/apache/http/HeaderElement;",
            "Lcom/facebook/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v0, p1, v1

    .line 107
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->b()Ljava/lang/String;

    move-result-object v6

    .line 109
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 110
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v7, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;

    invoke-direct {v7, v5, v6}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->e(Ljava/lang/String;)V

    .line 115
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->b(Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->d(Ljava/lang/String;)V

    .line 116
    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-virtual {p2}, Lcom/facebook/apache/http/cookie/CookieOrigin;->c()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v7, v5}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a([I)V

    .line 118
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->c()[Lcom/facebook/apache/http/NameValuePair;

    move-result-object v5

    .line 122
    new-instance v6, Ljava/util/HashMap;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 125
    aget-object v8, v5, v0

    .line 126
    invoke-interface {v8}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 128
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/NameValuePair;

    .line 130
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v6}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;)Lcom/facebook/apache/http/cookie/CookieAttributeHandler;

    move-result-object v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/facebook/apache/http/cookie/CookieAttributeHandler;->a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    .line 139
    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 141
    :cond_5
    return-object v3
.end method

.method private static c(Lcom/facebook/apache/http/cookie/CookieOrigin;)Lcom/facebook/apache/http/cookie/CookieOrigin;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/facebook/apache/http/cookie/CookieOrigin;->a()Ljava/lang/String;

    move-result-object v3

    .line 215
    const/4 v2, 0x1

    move v0, v1

    .line 216
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 218
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_2

    .line 223
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v0, Lcom/facebook/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0}, Lcom/facebook/apache/http/cookie/CookieOrigin;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/apache/http/cookie/CookieOrigin;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/apache/http/cookie/CookieOrigin;->d()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object p0, v0

    .line 231
    :cond_1
    return-object p0

    .line 216
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/Header;",
            "Lcom/facebook/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized cookie header \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->c(Lcom/facebook/apache/http/cookie/CookieOrigin;)Lcom/facebook/apache/http/cookie/CookieOrigin;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v1

    .line 91
    invoke-direct {p0, v1, v0}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->b([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/apache/http/HeaderElement;",
            "Lcom/facebook/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->c(Lcom/facebook/apache/http/cookie/CookieOrigin;)Lcom/facebook/apache/http/cookie/CookieOrigin;

    move-result-object v0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->b([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    if-nez p2, :cond_1

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->c(Lcom/facebook/apache/http/cookie/CookieOrigin;)Lcom/facebook/apache/http/cookie/CookieOrigin;

    move-result-object v0

    .line 154
    invoke-super {p0, p1, v0}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    .line 155
    return-void
.end method

.method protected final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/cookie/Cookie;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/cookie/Cookie;I)V

    .line 177
    instance-of v0, p2, Lcom/facebook/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 179
    check-cast v0, Lcom/facebook/apache/http/cookie/ClientCookie;

    const-string v1, "port"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/cookie/ClientCookie;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    const-string v1, "; $Port"

    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 182
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 184
    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->f()[I

    move-result-object v1

    .line 185
    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 187
    if-lez v0, :cond_0

    .line 188
    const-string v3, ","

    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 190
    :cond_0
    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "\""

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method

.method public final b()Lcom/facebook/apache/http/Header;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 243
    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 244
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 245
    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public final b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    if-nez p2, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    invoke-static {p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->c(Lcom/facebook/apache/http/cookie/CookieOrigin;)Lcom/facebook/apache/http/cookie/CookieOrigin;

    move-result-object v0

    .line 166
    invoke-super {p0, p1, v0}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "rfc2965"

    return-object v0
.end method
