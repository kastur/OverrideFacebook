.class final Lcom/google/common/io/Files$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/FileOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Z


# direct methods
.method private b()Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/common/io/Files$2;->a:Ljava/io/File;

    iget-boolean v2, p0, Lcom/google/common/io/Files$2;->b:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/common/io/Files$2;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
