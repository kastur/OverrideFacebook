.class public Lcom/facebook/apache/http/entity/InputStreamEntity;
.super Lcom/facebook/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->a:Ljava/io/InputStream;

    .line 53
    iput-wide p2, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->b:J

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, -0x1

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->a:Ljava/io/InputStream;

    .line 74
    const/16 v0, 0x800

    :try_start_0
    new-array v3, v0, [B

    .line 76
    iget-wide v0, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 78
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 83
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->b:J

    .line 84
    :goto_1
    cmp-long v4, v0, v8

    if-lez v4, :cond_2

    .line 85
    const/4 v4, 0x0

    const-wide/16 v5, 0x800

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 86
    if-eq v4, v7, :cond_2

    .line 87
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 95
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->b:J

    return-wide v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/apache/http/entity/InputStreamEntity;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    return-void
.end method
