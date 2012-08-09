.class public Lcom/facebook/apache/commons/codec/net/QCodec;
.super Lcom/facebook/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/StringDecoder;
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# static fields
.field private static final b:Ljava/util/BitSet;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 62
    sput-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 63
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 64
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 65
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 78
    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 79
    sget-object v1, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 82
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 87
    sget-object v1, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 95
    sget-object v1, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_2
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/net/QCodec;-><init>(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/commons/codec/net/QCodec;->c:Z

    .line 126
    iput-object p1, p0, Lcom/facebook/apache/commons/codec/net/QCodec;->a:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/QCodec;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/commons/codec/net/QCodec;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/net/QCodec;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/apache/commons/codec/net/QCodec;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
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
    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 250
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/net/QCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
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

    const-string v2, " cannot be encoded using Q codec"

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
    .line 130
    const-string v0, "Q"

    return-object v0
.end method

.method protected final a([B)[B
    .locals 1
    .parameter

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QCodec;->b:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a(Ljava/util/BitSet;[B)[B

    move-result-object v0

    goto :goto_0
.end method
