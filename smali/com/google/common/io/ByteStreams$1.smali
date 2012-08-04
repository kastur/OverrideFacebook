.class final Lcom/google/common/io/ByteStreams$1;
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
        "Ljava/io/ByteArrayInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:[B

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method private b()Ljava/io/ByteArrayInputStream;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteStreams$1;->a:[B

    iget v2, p0, Lcom/google/common/io/ByteStreams$1;->b:I

    iget v3, p0, Lcom/google/common/io/ByteStreams$1;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/common/io/ByteStreams$1;->b()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method
