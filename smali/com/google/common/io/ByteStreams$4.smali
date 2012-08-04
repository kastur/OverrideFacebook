.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/io/InputSupplier;

.field private synthetic b:J

.field private synthetic c:J


# direct methods
.method private b()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$4;->a:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 811
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$4;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 813
    :try_start_0
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$4;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_0
    new-instance v1, Lcom/google/common/io/LimitInputStream;

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->c:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v1

    .line 814
    :catch_0
    move-exception v1

    .line 815
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 816
    throw v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/google/common/io/ByteStreams$4;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
