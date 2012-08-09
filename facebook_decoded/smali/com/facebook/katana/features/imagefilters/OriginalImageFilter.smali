.class public Lcom/facebook/katana/features/imagefilters/OriginalImageFilter;
.super Lcom/facebook/katana/features/imagefilters/ImageFilter;
.source "OriginalImageFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Original"

    invoke-direct {p0, v0}, Lcom/facebook/katana/features/imagefilters/ImageFilter;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter

    .prologue
    .line 17
    return-object p1
.end method
