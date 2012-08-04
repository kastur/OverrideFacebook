.class public Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;
.super Lcom/facebook/katana/util/ImageUtils$ImageException;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "Cannot decode image"

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/ImageUtils$ImageException;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method
