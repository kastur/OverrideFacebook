.class public Lcom/facebook/apache/commons/codec/net/BCodec;
.super Lcom/facebook/apache/commons/codec/net/RFC1522Codec;
.source "BCodec.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/StringDecoder;
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/net/BCodec;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/apache/commons/codec/net/BCodec;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/BCodec;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/commons/codec/net/BCodec;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/net/BCodec;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/apache/commons/codec/net/BCodec;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/facebook/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 166
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/net/BCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be encoded using BCodec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "B"

    return-object v0
.end method

.method protected final a([B)[B
    .locals 1
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/commons/codec/binary/Base64;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method
