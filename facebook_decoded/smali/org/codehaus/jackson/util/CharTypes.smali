.class public final Lorg/codehaus/jackson/util/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static c:[I

.field private static d:[I

.field private static e:[I

.field private static f:[I

.field private static g:[I

.field private static h:[I

.field private static i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x100

    const/4 v1, -0x1

    const/16 v4, 0x80

    const/4 v2, 0x0

    .line 9
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 12
    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->a:[C

    array-length v3, v0

    .line 13
    new-array v0, v3, [B

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->b:[B

    move v0, v2

    .line 14
    :goto_0
    if-ge v0, v3, :cond_0

    .line 15
    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->b:[B

    sget-object v6, Lorg/codehaus/jackson/util/CharTypes;->a:[C

    aget-char v6, v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-array v3, v7, [I

    move v0, v2

    .line 32
    :goto_1
    const/16 v5, 0x20

    if-ge v0, v5, :cond_1

    .line 33
    aput v1, v3, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_1
    const/16 v0, 0x22

    const/4 v5, 0x1

    aput v5, v3, v0

    .line 37
    const/16 v0, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v0

    .line 47
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->c:[I

    array-length v0, v3

    new-array v5, v0, [I

    .line 48
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->c:[I

    sget-object v3, Lorg/codehaus/jackson/util/CharTypes;->c:[I

    array-length v3, v3

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    .line 49
    :goto_2
    if-ge v3, v7, :cond_5

    .line 53
    and-int/lit16 v0, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_2

    .line 54
    const/4 v0, 0x2

    .line 64
    :goto_3
    aput v0, v5, v3

    .line 49
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 55
    :cond_2
    and-int/lit16 v0, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v0, v6, :cond_3

    .line 56
    const/4 v0, 0x3

    goto :goto_3

    .line 57
    :cond_3
    and-int/lit16 v0, v3, 0xf8

    const/16 v6, 0xf0

    if-ne v0, v6, :cond_4

    .line 59
    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    move v0, v1

    .line 62
    goto :goto_3

    .line 66
    :cond_5
    sput-object v5, Lorg/codehaus/jackson/util/CharTypes;->d:[I

    .line 79
    new-array v3, v7, [I

    .line 81
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    const/16 v0, 0x21

    :goto_4
    if-ge v0, v7, :cond_7

    .line 84
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 85
    aput v2, v3, v0

    .line 83
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 91
    :cond_7
    const/16 v0, 0x40

    aput v2, v3, v0

    .line 92
    const/16 v0, 0x23

    aput v2, v3, v0

    .line 93
    const/16 v0, 0x2a

    aput v2, v3, v0

    .line 94
    const/16 v0, 0x2d

    aput v2, v3, v0

    .line 95
    const/16 v0, 0x2b

    aput v2, v3, v0

    .line 96
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->e:[I

    .line 106
    new-array v0, v7, [I

    .line 108
    sget-object v3, Lorg/codehaus/jackson/util/CharTypes;->e:[I

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->e:[I

    array-length v5, v5

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v0, v4, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 110
    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->f:[I

    .line 117
    new-array v0, v7, [I

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    .line 120
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->d:[I

    sget-object v3, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    invoke-static {v0, v4, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 124
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 125
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    aput v8, v0, v8

    .line 126
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    const/16 v3, 0xd

    const/16 v5, 0xd

    aput v5, v0, v3

    .line 127
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    const/16 v3, 0x2a

    const/16 v5, 0x2a

    aput v5, v0, v3

    .line 136
    new-array v3, v4, [I

    move v0, v2

    .line 138
    :goto_5
    const/16 v5, 0x20

    if-ge v0, v5, :cond_8

    .line 140
    aput v1, v3, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 145
    :cond_8
    const/16 v0, 0x22

    const/16 v5, 0x22

    aput v5, v3, v0

    .line 146
    const/16 v0, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v0

    .line 148
    const/16 v0, 0x8

    const/16 v5, 0x62

    aput v5, v3, v0

    .line 149
    const/16 v0, 0x9

    const/16 v5, 0x74

    aput v5, v3, v0

    .line 150
    const/16 v0, 0xc

    const/16 v5, 0x66

    aput v5, v3, v0

    .line 151
    const/16 v0, 0x6e

    aput v0, v3, v8

    .line 152
    const/16 v0, 0xd

    const/16 v5, 0x72

    aput v5, v3, v0

    .line 153
    sput-object v3, Lorg/codehaus/jackson/util/CharTypes;->h:[I

    .line 161
    new-array v0, v4, [I

    .line 163
    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 164
    :goto_6
    if-ge v0, v8, :cond_9

    .line 165
    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->i:[I

    add-int/lit8 v3, v0, 0x30

    aput v0, v1, v3

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v2

    .line 167
    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 168
    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->i:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 169
    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->i:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 171
    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 192
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->i:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x30

    .line 197
    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->h:[I

    .line 198
    array-length v2, v1

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_3

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 201
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    if-nez v5, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    aget v4, v1, v4

    .line 207
    if-gez v4, :cond_2

    .line 209
    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    .line 213
    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->a:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_2
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :cond_3
    return-void
.end method

.method public static final a()[I
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->c:[I

    return-object v0
.end method

.method public static final b()[I
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->d:[I

    return-object v0
.end method

.method public static final c()[I
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->e:[I

    return-object v0
.end method

.method public static final d()[I
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->f:[I

    return-object v0
.end method

.method public static final e()[I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->g:[I

    return-object v0
.end method

.method public static final f()[I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->h:[I

    return-object v0
.end method

.method public static g()[C
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->a:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static h()[B
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
