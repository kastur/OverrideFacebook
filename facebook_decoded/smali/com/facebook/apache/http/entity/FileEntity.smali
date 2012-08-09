.class public Lcom/facebook/apache/http/entity/FileEntity;
.super Lcom/facebook/apache/http/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/io/File;


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/facebook/apache/http/entity/FileEntity;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 74
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 75
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 80
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/apache/http/entity/FileEntity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/apache/http/entity/FileEntity;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
