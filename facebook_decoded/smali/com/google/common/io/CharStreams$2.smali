.class final Lcom/google/common/io/CharStreams$2;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStreamReader;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/io/InputSupplier;

.field private synthetic b:Ljava/nio/charset/Charset;


# direct methods
.method private b()Ljava/io/InputStreamReader;
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$2;->a:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/common/io/CharStreams$2;->b()Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method
