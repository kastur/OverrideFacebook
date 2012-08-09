.class public abstract Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lcom/facebook/apache/http/io/BufferInfo;
.implements Lcom/facebook/apache/http/io/SessionOutputBuffer;


# static fields
.field private static final a:[B


# instance fields
.field private b:Ljava/io/OutputStream;

.field private c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e:Z

    .line 70
    const/16 v0, 0x200

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->f:I

    return-void
.end method

.method private a([B)V
    .locals 2
    .parameter

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a([BII)V

    goto :goto_0
.end method

.method private static c()Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v0

    .line 130
    if-lez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->e()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a()V

    .line 133
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->g:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a(J)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e()V

    .line 139
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 140
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a(I)V

    .line 179
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e:Z

    if-eqz v0, :cond_3

    .line 214
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v0

    .line 216
    :goto_1
    if-lez v0, :cond_4

    .line 217
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->c()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v3

    sub-int/2addr v2, v3

    .line 218
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 219
    if-lez v2, :cond_1

    .line 220
    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e()V

    .line 225
    :cond_2
    add-int/2addr v1, v2

    .line 226
    sub-int/2addr v0, v2

    .line 227
    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a([B)V

    .line 234
    :cond_4
    sget-object v0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a:[B

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a([B)V

    goto :goto_0
.end method

.method protected final a(Ljava/io/OutputStream;ILcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-nez p3, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    .line 92
    new-instance v0, Lcom/facebook/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    .line 93
    invoke-static {p3}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e:Z

    .line 96
    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->f:I

    .line 97
    invoke-static {}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c()Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->g:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 98
    return-void

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a([B)V

    .line 197
    :cond_1
    sget-object v0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a:[B

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->a([B)V

    goto :goto_0
.end method

.method public final a([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->f:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->c()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e()V

    .line 153
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 154
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->g:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a(J)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 158
    if-le p3, v0, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->e()V

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a([BII)V

    goto :goto_0
.end method

.method public final b()Lcom/facebook/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->g:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;->c:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v0

    return v0
.end method
