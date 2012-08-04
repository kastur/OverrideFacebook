.class public Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;
.super Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/facebook/apache/http/cookie/CookiePathComparator;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/apache/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lcom/facebook/apache/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a:Lcom/facebook/apache/http/cookie/CookiePathComparator;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    .line 80
    :goto_0
    iput-boolean p2, p0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->d:Z

    .line 81
    const-string v0, "version"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 82
    const-string v0, "path"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 83
    const-string v0, "domain"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 84
    const-string v0, "max-age"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 85
    const-string v0, "secure"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 86
    const-string v0, "comment"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 87
    const-string v0, "expires"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 89
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x22

    .line 196
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 197
    const-string v0, "="

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 198
    if-eqz p2, :cond_0

    .line 199
    if-lez p3, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0, p2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
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
    .line 148
    const v0, 0x7fffffff

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 151
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 152
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v2, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 156
    const-string v0, "Cookie"

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 157
    const-string v0, ": "

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 158
    const-string v0, "$Version="

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 161
    const-string v4, "; "

    invoke-virtual {v2, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/cookie/Cookie;I)V

    goto :goto_2

    .line 165
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    new-instance v1, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 173
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v3

    .line 174
    new-instance v4, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 175
    const-string v5, "Cookie: "

    invoke-virtual {v4, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 176
    const-string v5, "$Version="

    invoke-virtual {v4, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 178
    const-string v5, "; "

    invoke-virtual {v4, v5}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v4, v0, v3}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/cookie/Cookie;I)V

    .line 180
    new-instance v0, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v0, v4}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
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
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p2, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
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

    .line 108
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    sget-object v1, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a:Lcom/facebook/apache/http/cookie/CookiePathComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 140
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->d:Z

    if-eqz v0, :cond_3

    .line 141
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    .line 119
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 120
    new-instance v0, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    .line 126
    return-void
.end method

.method protected a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/cookie/Cookie;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    instance-of v0, p2, Lcom/facebook/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/facebook/apache/http/cookie/ClientCookie;

    const-string v1, "path"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "; "

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 223
    const-string v0, "$Path"

    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    :cond_0
    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    instance-of v0, p2, Lcom/facebook/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/facebook/apache/http/cookie/ClientCookie;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "; "

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 230
    const-string v0, "$Domain"

    invoke-interface {p2}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/facebook/apache/http/impl/cookie/RFC2109Spec;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    :cond_1
    return-void
.end method

.method public b()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "rfc2109"

    return-object v0
.end method
