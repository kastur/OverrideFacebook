.class public Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;
.super Lcom/facebook/katana/util/ImageUtils$ImageException;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>(Ljava/lang/OutOfMemoryError;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const-string v0, "Out of memory"

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/util/ImageUtils$ImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method
