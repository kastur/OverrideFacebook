.class public final Lorg/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lorg/codehaus/jackson/JsonEncoding;

.field private c:Z

.field private d:Lorg/codehaus/jackson/util/BufferRecycler;

.field private e:[B

.field private f:[B

.field private g:[C

.field private h:[C

.field private i:[C


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    .line 63
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->f:[B

    .line 70
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    .line 77
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    .line 85
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    .line 95
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 96
    iput-object p2, p0, Lorg/codehaus/jackson/io/IOContext;->a:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lorg/codehaus/jackson/io/IOContext;->c:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonEncoding;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->b:Lorg/codehaus/jackson/JsonEncoding;

    .line 103
    return-void
.end method

.method public final a([B)V
    .locals 2
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    if-eq p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 191
    :cond_1
    return-void
.end method

.method public final a([C)V
    .locals 2
    .parameter

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    if-eq p1, v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 216
    :cond_1
    return-void
.end method

.method public final a(I)[C
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    return-object v0
.end method

.method public final b()Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final b([C)V
    .locals 2
    .parameter

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    if-eq p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 227
    :cond_1
    return-void
.end method

.method public final c([C)V
    .locals 2
    .parameter

    .prologue
    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    if-eq p1, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->i:[C

    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 238
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/codehaus/jackson/io/IOContext;->c:Z

    return v0
.end method

.method public final d()Lorg/codehaus/jackson/util/TextBuffer;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final e()[B
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->e:[B

    return-object v0
.end method

.method public final f()[C
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->g:[C

    return-object v0
.end method

.method public final g()[C
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->h:[C

    return-object v0
.end method
