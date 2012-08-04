.class public Lcom/facebook/apache/http/entity/mime/content/ByteArrayBody;
.super Lcom/facebook/apache/http/entity/mime/content/AbstractContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 84
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/content/ByteArrayBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "binary"

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
