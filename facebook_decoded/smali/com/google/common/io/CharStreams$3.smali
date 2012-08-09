.class final Lcom/google/common/io/CharStreams$3;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/OutputStreamWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/io/OutputSupplier;

.field private synthetic b:Ljava/nio/charset/Charset;


# direct methods
.method private b()Ljava/io/OutputStreamWriter;
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$3;->a:Lcom/google/common/io/OutputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/OutputSupplier;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$3;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/common/io/CharStreams$3;->b()Ljava/io/OutputStreamWriter;

    move-result-object v0

    return-object v0
.end method
