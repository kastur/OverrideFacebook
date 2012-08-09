.class public Lcom/facebook/apache/http/client/entity/GzipDecompressingEntity;
.super Lcom/facebook/apache/http/client/entity/DecompressingEntity;
.source "GzipDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/client/entity/DecompressingEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    .line 52
    return-void
.end method


# virtual methods
.method final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 56
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/facebook/apache/http/client/entity/DecompressingEntity;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final e()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/facebook/apache/http/client/entity/DecompressingEntity;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
