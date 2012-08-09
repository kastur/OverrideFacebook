.class public Lcom/facebook/orca/images/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/images/ImageCacheKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/images/ImageCacheKey;",
            "Lcom/facebook/orca/images/ImageCache$CachedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/images/ImageCache;->a:J

    .line 40
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/images/ImageCache;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->h:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCache;->c:Landroid/content/Context;

    .line 83
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageCache;->d:I

    .line 84
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->c(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 89
    invoke-static {p1}, Lcom/facebook/orca/images/ImageCacheCleanupService;->a(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->d()Ljava/io/File;

    move-result-object v1

    .line 269
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 328
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    invoke-static {p2}, Lcom/facebook/orca/images/ImageCache;->a(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;-><init>(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;I)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    invoke-static {p2}, Lcom/facebook/orca/images/ImageCache;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    .line 332
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->e()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 333
    const-string v0, "orca:ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cleaning out in memory cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 336
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 339
    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->b(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 341
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;-><init>(Lcom/facebook/orca/images/ImageCache;B)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 344
    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->c(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    .line 346
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->f()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 350
    :cond_2
    const-string v0, "orca:ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished cleaning out in memory cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/io/File;

    const-string v2, "images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 278
    :cond_0
    return-object v1
.end method

.method private e()I
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->d:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 309
    const/high16 v0, 0x80

    .line 313
    :goto_0
    return v0

    .line 310
    :cond_0
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->d:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 311
    const/high16 v0, 0x40

    goto :goto_0

    .line 313
    :cond_1
    const/high16 v0, 0x20

    goto :goto_0
.end method

.method private f()I
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->e()I

    move-result v0

    .line 319
    iget v1, p0, Lcom/facebook/orca/images/ImageCache;->d:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 320
    const/high16 v1, 0x10

    add-int/2addr v0, v1

    .line 324
    :goto_0
    return v0

    .line 322
    :cond_0
    const/high16 v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private f(Lcom/facebook/orca/images/ImageCacheKey;)V
    .locals 7
    .parameter

    .prologue
    .line 239
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->h(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/facebook/orca/images/ImageCache;->a:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 254
    const-string v0, ".jpg"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private h(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 258
    const-string v0, ".lru"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V

    .line 98
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    return-object v0

    .line 100
    :cond_0
    :try_start_2
    monitor-exit v2

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->d()Ljava/io/File;

    move-result-object v2

    .line 197
    new-instance v1, Lcom/facebook/orca/images/ImageCache$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageCache$1;-><init>(Lcom/facebook/orca/images/ImageCache;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 203
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 204
    iget-object v6, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 205
    :try_start_0
    const-string v7, ".lru"

    invoke-static {v5, v7}, Lcom/facebook/orca/images/ImageCache;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 208
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 216
    :cond_1
    new-instance v1, Lcom/facebook/orca/images/ImageCache$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageCache$2;-><init>(Lcom/facebook/orca/images/ImageCache;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 224
    array-length v4, v1

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 225
    iget-object v6, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 226
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v2, v7

    sget-wide v9, Lcom/facebook/orca/images/ImageCache;->b:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 227
    const-string v7, ".jpg"

    invoke-static {v5, v7}, Lcom/facebook/orca/images/ImageCache;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 228
    const-string v8, ".png"

    invoke-static {v5, v8}, Lcom/facebook/orca/images/ImageCache;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 230
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 231
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 233
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_0
    move-exception v5

    goto :goto_1

    .line 235
    :cond_3
    return-void
.end method

.method public final a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public final a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 174
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    const-string v2, "orca:ImageCache"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 177
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a()V

    .line 113
    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 297
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    .line 298
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->d()Ljava/io/File;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 302
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->i:I

    return v0
.end method

.method public final c(Lcom/facebook/orca/images/ImageCacheKey;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 122
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V

    .line 151
    :goto_0
    return-object v0

    .line 136
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCache;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 142
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0

    .line 151
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 145
    :cond_1
    monitor-exit v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 148
    goto :goto_0
.end method

.method public final e(Lcom/facebook/orca/images/ImageCacheKey;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 157
    if-nez v0, :cond_0

    move v0, v1

    .line 164
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v1

    .line 164
    goto :goto_0
.end method
