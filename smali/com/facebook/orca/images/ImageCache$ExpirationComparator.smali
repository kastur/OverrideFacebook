.class Lcom/facebook/orca/images/ImageCache$ExpirationComparator;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/images/ImageCache$CachedBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/ImageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageCache;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;-><init>(Lcom/facebook/orca/images/ImageCache;)V

    return-void
.end method

.method private static a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x1d4c0

    .line 373
    invoke-static {p0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->e(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 374
    invoke-static {p1}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->e(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 376
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 377
    const/4 v0, -0x1

    .line 382
    :goto_0
    return v0

    .line 378
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 379
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p1}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I

    move-result v0

    invoke-static {p0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 369
    check-cast p1, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    check-cast p2, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    invoke-static {p1, p2}, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;->a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I

    move-result v0

    return v0
.end method
