.class public Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private final a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;-><init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;I)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    .line 56
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->d:Z

    .line 59
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->e:Z

    .line 72
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    .line 73
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 74
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    invoke-interface {v0, v1, v3, v2}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a([BII)V

    .line 96
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 97
    iput v3, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    .line 99
    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    invoke-interface {v0, v1, v3, v2}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a([BII)V

    .line 108
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a([BII)V

    .line 109
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 110
    iput v3, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    .line 111
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->d:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a()V

    .line 128
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->d:Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->e:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->e:Z

    .line 181
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c()V

    .line 182
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a()V

    .line 184
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a()V

    .line 172
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a()V

    .line 173
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->e:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 139
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    .line 140
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a()V

    .line 141
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->write([BII)V

    .line 149
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->e:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    array-length v0, v0

    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->a([BII)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->b:[B

    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedOutputStream;->c:I

    goto :goto_0
.end method
