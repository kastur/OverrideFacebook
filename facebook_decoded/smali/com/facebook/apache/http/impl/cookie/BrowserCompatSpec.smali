.class public Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;
.super Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    .line 76
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    .line 103
    :goto_0
    const-string v0, "path"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 104
    const-string v0, "domain"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 105
    const-string v0, "max-age"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 106
    const-string v0, "secure"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 107
    const-string v0, "comment"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 108
    const-string v0, "expires"

    new-instance v1, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieAttributeHandler;)V

    .line 110
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->b:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

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

    const/4 v5, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p2, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
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

    .line 130
    :cond_2
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v3

    .line 133
    array-length v6, v3

    move v4, v5

    move v2, v5

    move v0, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v7, v3, v4

    .line 134
    const-string v8, "version"

    invoke-interface {v7, v8}, Lcom/facebook/apache/http/HeaderElement;->a(Ljava/lang/String;)Lcom/facebook/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_3

    move v0, v1

    .line 137
    :cond_3
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lcom/facebook/apache/http/HeaderElement;->a(Ljava/lang/String;)Lcom/facebook/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_4

    move v2, v1

    .line 133
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_5
    if-nez v2, :cond_6

    if-nez v0, :cond_9

    .line 144
    :cond_6
    sget-object v3, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;->a:Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 147
    instance-of v0, p1, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 148
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .line 149
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    check-cast p1, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {p1}, Lcom/facebook/apache/http/FormattedHeader;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v6

    invoke-direct {v0, v4, v6}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 161
    :goto_1
    new-array v1, v1, [Lcom/facebook/apache/http/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftHeaderParser;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    .line 163
    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpec;->a([Lcom/facebook/apache/http/HeaderElement;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 153
    :cond_7
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-nez v0, :cond_8

    .line 155
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_8
    new-instance v2, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 158
    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v4

    invoke-direct {v0, v5, v4}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_1

    :cond_9
    move-object v0, v3

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    new-instance v2, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 174
    const-string v0, "Cookie"

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 175
    const-string v0, ": "

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 177
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/cookie/Cookie;

    .line 178
    if-lez v1, :cond_2

    .line 179
    const-string v3, "; "

    invoke-virtual {v2, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 181
    :cond_2
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 182
    const-string v3, "="

    invoke-virtual {v2, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 183
    invoke-interface {v0}, Lcom/facebook/apache/http/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 176
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    new-instance v1, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method public final b()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "compatibility"

    return-object v0
.end method
