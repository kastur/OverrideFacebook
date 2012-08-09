.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    .line 79
    if-nez p1, :cond_0

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/high16 v0, 0x4

    .line 275
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:I

    .line 283
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 285
    if-le v1, v0, :cond_0

    .line 288
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    .line 291
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:I

    .line 90
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    .line 92
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->g()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-void
.end method

.method public final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_0
.end method

.method public final b()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:I

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int v4, v0, v1

    .line 150
    if-nez v4, :cond_0

    .line 151
    sget-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a:[B

    .line 171
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-array v3, v4, [B

    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 158
    array-length v6, v0

    .line 159
    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int v0, v1, v6

    move v1, v0

    .line 161
    goto :goto_1

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v5, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/2addr v0, v1

    .line 164
    if-eq v0, v4, :cond_2

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: total len assumed to be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", copied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a()V

    :cond_3
    move-object v0, v3

    .line 171
    goto :goto_0
.end method

.method public final c(I)V
    .locals 3
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 138
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a()V

    .line 188
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public final d()[B
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->g()V

    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    return-object v0
.end method

.method public final d(I)[B
    .locals 1
    .parameter

    .prologue
    .line 214
    iput p1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    .line 215
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput p1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    .line 224
    return-void
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    return v0
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final write(I)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 261
    return-void
.end method

.method public final write([B)V
    .locals 2
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->write([BII)V

    .line 239
    return-void
.end method

.method public final write([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    sub-int/2addr v0, v1

    .line 246
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    if-lez v0, :cond_0

    .line 248
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:[B

    iget v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr p2, v0

    .line 250
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:I

    .line 251
    sub-int/2addr p3, v0

    .line 253
    :cond_0
    if-lez p3, :cond_1

    .line 254
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->g()V

    goto :goto_0

    .line 256
    :cond_1
    return-void
.end method
