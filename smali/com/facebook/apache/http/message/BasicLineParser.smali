.class public Lcom/facebook/apache/http/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lcom/facebook/apache/http/message/LineParser;


# static fields
.field public static final a:Lcom/facebook/apache/http/message/BasicLineParser;


# instance fields
.field private b:Lcom/facebook/apache/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lcom/facebook/apache/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/message/BasicLineParser;->a:Lcom/facebook/apache/http/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicLineParser;-><init>(Lcom/facebook/apache/http/ProtocolVersion;)V

    .line 95
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/ProtocolVersion;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->b:Lcom/facebook/apache/http/HttpVersion;

    .line 86
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicLineParser;->b:Lcom/facebook/apache/http/ProtocolVersion;

    .line 87
    return-void
.end method

.method private a(II)Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicLineParser;->b:Lcom/facebook/apache/http/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/ProtocolVersion;->a(II)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)Lcom/facebook/apache/http/RequestLine;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    new-instance v0, Lcom/facebook/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/apache/http/ProtocolVersion;ILjava/lang/String;)Lcom/facebook/apache/http/StatusLine;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    new-instance v0, Lcom/facebook/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/apache/http/message/BasicStatusLine;-><init>(Lcom/facebook/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method private d(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/ProtocolVersion;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-nez p2, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicLineParser;->b:Lcom/facebook/apache/http/ProtocolVersion;

    invoke-virtual {v0}, Lcom/facebook/apache/http/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 133
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v7

    .line 134
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->a()I

    move-result v3

    .line 136
    invoke-static {p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V

    .line 138
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v8

    .line 141
    add-int v0, v8, v6

    add-int/lit8 v0, v0, 0x4

    if-le v0, v3, :cond_2

    .line 142
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid protocol version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v2

    move v0, v1

    .line 149
    :goto_0
    if-eqz v0, :cond_4

    if-ge v4, v6, :cond_4

    .line 150
    add-int v0, v8, v4

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v0, v9, :cond_3

    move v0, v1

    .line 149
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 150
    goto :goto_1

    .line 152
    :cond_4
    if-eqz v0, :cond_9

    .line 153
    add-int v0, v8, v6

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_5

    .line 155
    :goto_2
    if-nez v1, :cond_6

    .line 156
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid protocol version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v2

    .line 153
    goto :goto_2

    .line 161
    :cond_6
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v8

    .line 163
    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v1

    .line 164
    if-ne v1, v10, :cond_7

    .line 165
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid protocol version number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_7
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 179
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v0

    .line 180
    if-ne v0, v10, :cond_8

    move v0, v3

    .line 185
    :cond_8
    :try_start_1
    invoke-virtual {p1, v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 192
    invoke-virtual {p2, v0}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 194
    invoke-direct {p0, v2, v1}, Lcom/facebook/apache/http/message/BasicLineParser;->a(II)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid protocol major version number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :catch_1
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid protocol minor version number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v1, v0

    goto/16 :goto_2
.end method

.method private static e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v0

    .line 494
    invoke-virtual {p1}, Lcom/facebook/apache/http/message/ParserCursor;->a()I

    move-result v1

    .line 495
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v2

    invoke-static {v2}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 500
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/Header;
    .locals 1
    .parameter

    .prologue
    .line 485
    new-instance v0, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v0, p1}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicLineParser;->b:Lcom/facebook/apache/http/ProtocolVersion;

    invoke-virtual {v1}, Lcom/facebook/apache/http/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 229
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v1

    add-int/lit8 v4, v6, 0x4

    if-ge v1, v4, :cond_3

    .line 258
    :cond_2
    :goto_0
    return v3

    .line 232
    :cond_3
    if-gez v0, :cond_5

    .line 235
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v6

    .line 245
    :cond_4
    add-int v1, v0, v6

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v4

    if-gt v1, v4, :cond_2

    move v4, v3

    move v1, v2

    .line 251
    :goto_1
    if-eqz v1, :cond_7

    if-ge v4, v6, :cond_7

    .line 252
    add-int v1, v0, v4

    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v1, v7, :cond_6

    move v1, v2

    .line 251
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    :cond_5
    if-nez v0, :cond_4

    .line 238
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v1

    invoke-static {v1}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v1, v3

    .line 252
    goto :goto_2

    .line 254
    :cond_7
    if-eqz v1, :cond_9

    .line 255
    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    :goto_4
    move v3, v2

    .line 258
    goto :goto_0

    :cond_8
    move v2, v3

    .line 255
    goto :goto_4

    :cond_9
    move v2, v1

    goto :goto_4
.end method

.method public final b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/RequestLine;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    if-nez p2, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v0

    .line 304
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->a()I

    move-result v1

    .line 307
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V

    .line 308
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v2

    .line 310
    const/16 v3, 0x20

    invoke-virtual {p1, v3, v2, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v3

    .line 311
    if-gez v3, :cond_2

    .line 312
    new-instance v2, Lcom/facebook/apache/http/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :catch_0
    move-exception v2

    new-instance v2, Lcom/facebook/apache/http/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_2
    :try_start_1
    invoke-virtual {p1, v2, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {p2, v3}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 318
    invoke-static {p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V

    .line 319
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v3

    .line 321
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v3, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v4

    .line 322
    if-gez v4, :cond_3

    .line 323
    new-instance v2, Lcom/facebook/apache/http/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {p2, v4}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->d(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v4

    .line 331
    invoke-static {p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V

    .line 332
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->c()Z

    move-result v5

    if-nez v5, :cond_4

    .line 333
    new-instance v2, Lcom/facebook/apache/http/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_4
    invoke-static {v2, v3, v4}, Lcom/facebook/apache/http/message/BasicLineParser;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)Lcom/facebook/apache/http/RequestLine;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/StatusLine;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v3

    .line 396
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->a()I

    move-result v2

    .line 400
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->d(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v4

    .line 403
    invoke-static {p1, p2}, Lcom/facebook/apache/http/message/BasicLineParser;->e(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)V

    .line 404
    invoke-virtual {p2}, Lcom/facebook/apache/http/message/ParserCursor;->b()I

    move-result v5

    .line 406
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v5, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v0

    .line 407
    if-gez v0, :cond_5

    move v1, v2

    .line 410
    :goto_0
    invoke-virtual {p1, v5, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v5

    .line 412
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 413
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 414
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Status line contains invalid status code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Invalid status line: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    :cond_3
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 428
    if-ge v1, v2, :cond_4

    .line 430
    :try_start_2
    invoke-virtual {p1, v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    :goto_2
    invoke-static {v4, v5, v0}, Lcom/facebook/apache/http/message/BasicLineParser;->a(Lcom/facebook/apache/http/ProtocolVersion;ILjava/lang/String;)Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    return-object v0

    .line 422
    :catch_1
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Status line contains invalid status code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_4
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_0
.end method
