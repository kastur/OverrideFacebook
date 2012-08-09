.class public Lcom/facebook/apache/http/entity/ByteArrayEntity;
.super Lcom/facebook/apache/http/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:[B


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/ByteArrayEntity;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 70
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/apache/http/entity/ByteArrayEntity;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/apache/http/entity/ByteArrayEntity;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
