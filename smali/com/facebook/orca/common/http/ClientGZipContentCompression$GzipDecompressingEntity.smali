.class Lcom/facebook/orca/common/http/ClientGZipContentCompression$GzipDecompressingEntity;
.super Lcom/facebook/apache/http/entity/HttpEntityWrapper;
.source "ClientGZipContentCompression.java"


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/common/http/ClientGZipContentCompression$GzipDecompressingEntity;->a:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->f()Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method
