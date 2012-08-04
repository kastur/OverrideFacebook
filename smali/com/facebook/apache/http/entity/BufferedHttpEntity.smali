.class public Lcom/facebook/apache/http/entity/BufferedHttpEntity;
.super Lcom/facebook/apache/http/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 4
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    .line 59
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/http/util/EntityUtils;->b(Lcom/facebook/apache/http/HttpEntity;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/HttpEntity;->a(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->f()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/entity/BufferedHttpEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
