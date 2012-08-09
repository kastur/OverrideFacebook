.class public Lcom/facebook/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lcom/facebook/apache/http/message/LineFormatter;


# static fields
.field public static final a:Lcom/facebook/apache/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lcom/facebook/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/message/BasicLineFormatter;->a:Lcom/facebook/apache/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/ProtocolVersion;)I
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/apache/http/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 1
    .parameter

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 78
    :goto_0
    return-object p0

    .line 76
    :cond_0
    new-instance p0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/ProtocolVersion;)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-static {p2}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/ProtocolVersion;)I

    move-result v0

    .line 112
    if-nez p1, :cond_1

    .line 113
    new-instance p1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 118
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/apache/http/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 120
    invoke-virtual {p2}, Lcom/facebook/apache/http/ProtocolVersion;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 122
    invoke-virtual {p2}, Lcom/facebook/apache/http/ProtocolVersion;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 124
    return-object p1

    .line 115
    :cond_1
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(I)V

    goto :goto_0
.end method

.method private static b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/Header;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-interface {p1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 317
    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 320
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(I)V

    .line 322
    invoke-virtual {p0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 323
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 324
    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p0, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 327
    :cond_1
    return-void
.end method

.method private b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/RequestLine;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x20

    .line 185
    invoke-interface {p2}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {p2}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 191
    invoke-virtual {p1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(I)V

    .line 193
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 195
    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 197
    invoke-interface {p2}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/ProtocolVersion;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 198
    return-void
.end method

.method private b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/StatusLine;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x20

    .line 246
    invoke-interface {p2}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 248
    invoke-interface {p2}, Lcom/facebook/apache/http/StatusLine;->c()Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 252
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(I)V

    .line 254
    invoke-interface {p2}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/ProtocolVersion;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 255
    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 256
    invoke-interface {p2}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 258
    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 261
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/Header;)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    instance-of v0, p2, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_1

    .line 293
    check-cast p2, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {p2}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-static {p1}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 296
    invoke-static {v0, p2}, Lcom/facebook/apache/http/message/BasicLineFormatter;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/Header;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/RequestLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0, p2}, Lcom/facebook/apache/http/message/BasicLineFormatter;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/RequestLine;)V

    .line 171
    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/StatusLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0, p2}, Lcom/facebook/apache/http/message/BasicLineFormatter;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/StatusLine;)V

    .line 231
    return-object v0
.end method
