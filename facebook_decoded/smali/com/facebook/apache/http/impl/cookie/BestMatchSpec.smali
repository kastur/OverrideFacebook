.class public Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lcom/facebook/apache/http/cookie/CookieSpec;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Z

.field private c:Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

.field private d:Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

.field private e:Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->b:Z

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c:Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c:Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c:Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    return-object v0
.end method

.method private d()Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d:Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d:Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d:Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private e()Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e:Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e:Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e:Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
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
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v5

    .line 106
    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 107
    const-string v8, "version"

    invoke-interface {v7, v8}, Lcom/facebook/apache/http/HeaderElement;->a(Ljava/lang/String;)Lcom/facebook/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_2

    move v0, v1

    .line 110
    :cond_2
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lcom/facebook/apache/http/HeaderElement;->a(Ljava/lang/String;)Lcom/facebook/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_4
    if-nez v2, :cond_5

    if-nez v0, :cond_8

    .line 117
    :cond_5
    sget-object v3, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;->a:Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 120
    instance-of v0, p1, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .line 122
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    check-cast p1, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {p1}, Lcom/facebook/apache/http/FormattedHeader;->b()I

    move-result v5

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 134
    :goto_1
    new-array v1, v1, [Lcom/facebook/apache/http/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 135
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e()Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 140
    :goto_2
    return-object v0

    .line 126
    :cond_6
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_7

    .line 128
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_7
    new-instance v2, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 131
    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_1

    .line 137
    :cond_8
    const-string v0, "Set-Cookie2"

    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 140
    :cond_9
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d()Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    const v1, 0x7fffffff

    .line 188
    const/4 v0, 0x1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 190
    instance-of v4, v0, Lcom/facebook/apache/http/cookie/SetCookie2;

    if-nez v4, :cond_1

    .line 191
    const/4 v1, 0x0

    .line 193
    :cond_1
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 194
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    .line 197
    :cond_2
    if-lez v2, :cond_4

    .line 198
    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 204
    :goto_2
    return-object v0

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d()Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e()Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 155
    instance-of v0, p1, Lcom/facebook/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d()Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e()Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    goto :goto_0
.end method

.method public final b()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->b()Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-nez p2, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 173
    instance-of v0, p1, Lcom/facebook/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->c()Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2965Spec;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->d()Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_3
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpec;->e()Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string v0, "best-match"

    return-object v0
.end method
