.class public final Lorg/codehaus/jackson/node/TextNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "TextNode.java"


# static fields
.field private static a:Lorg/codehaus/jackson/node/TextNode;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/node/TextNode;->a:Lorg/codehaus/jackson/node/TextNode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-void
.end method

.method private static B()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    const-string v1, "Unexpected end-of-String when base64 content"

    sget-object v2, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x22

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1}, Lorg/codehaus/jackson/util/CharTypes;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    return-void
.end method

.method private a(Lorg/codehaus/jackson/Base64Variant;CI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 268
    return-void
.end method

.method private static a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    if-eqz p3, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/JsonParseException;

    sget-object v2, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {v1, v0, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v9, -0x2

    .line 66
    new-instance v3, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    .line 67
    iget-object v4, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v2

    .line 72
    :goto_0
    if-ge v0, v5, :cond_3

    .line 76
    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    if-ge v1, v5, :cond_3

    .line 78
    const/16 v6, 0x20

    if-le v0, v6, :cond_e

    .line 81
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v6

    .line 82
    if-gez v6, :cond_0

    .line 83
    invoke-direct {p0, p1, v0, v2}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 87
    :cond_0
    if-lt v1, v5, :cond_1

    .line 88
    invoke-static {}, Lorg/codehaus/jackson/node/TextNode;->B()V

    .line 90
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v7

    .line 92
    if-gez v7, :cond_2

    .line 93
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v8}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 95
    :cond_2
    shl-int/lit8 v1, v6, 0x6

    or-int/2addr v1, v7

    .line 97
    if-lt v0, v5, :cond_5

    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    shr-int/lit8 v0, v1, 0x4

    .line 102
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 154
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    return-object v0

    .line 105
    :cond_4
    invoke-static {}, Lorg/codehaus/jackson/node/TextNode;->B()V

    .line 107
    :cond_5
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v7

    .line 111
    if-gez v7, :cond_9

    .line 112
    if-eq v7, v9, :cond_6

    .line 113
    const/4 v7, 0x2

    invoke-direct {p0, p1, v0, v7}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 116
    :cond_6
    if-lt v6, v5, :cond_7

    .line 117
    invoke-static {}, Lorg/codehaus/jackson/node/TextNode;->B()V

    .line 119
    :cond_7
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 120
    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v7

    if-nez v7, :cond_8

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "expected padding character \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v10, v7}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 124
    :cond_8
    shr-int/lit8 v1, v1, 0x4

    .line 125
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    .line 129
    :cond_9
    shl-int/lit8 v0, v1, 0x6

    or-int v1, v0, v7

    .line 131
    if-lt v6, v5, :cond_b

    .line 133
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 134
    shr-int/lit8 v0, v1, 0x2

    .line 135
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto :goto_2

    .line 138
    :cond_a
    invoke-static {}, Lorg/codehaus/jackson/node/TextNode;->B()V

    .line 140
    :cond_b
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 141
    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v7

    .line 142
    if-gez v7, :cond_d

    .line 143
    if-eq v7, v9, :cond_c

    .line 144
    invoke-direct {p0, p1, v6, v10}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;CI)V

    .line 146
    :cond_c
    shr-int/lit8 v1, v1, 0x2

    .line 147
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_0

    .line 150
    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v7

    .line 151
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method public static d(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .parameter

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lorg/codehaus/jackson/node/TextNode;->a:Lorg/codehaus/jackson/node/TextNode;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "true"

    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 232
    check-cast p1, Lorg/codehaus/jackson/node/TextNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final o()[B
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
