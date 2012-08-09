.class public Lcom/facebook/katana/binding/ProfileImagesCache;
.super Ljava/lang/Object;
.source "ProfileImagesCache.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/ProfileImage;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/ProfileImage;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/ProfileImage;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/katana/binding/WorkerThread;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->e:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/binding/ProfileImagesCache;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iget-wide v3, p2, Lcom/facebook/katana/binding/ProfileImage;->a:J

    .line 294
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->e:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    if-nez v0, :cond_1

    .line 299
    const-string v0, "ProfileImagesCache"

    const-string v1, "mLoaderThread not loaded"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_2

    .line 303
    const-string v0, "ProfileImagesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid profileid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->e:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->a()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/ProfileImagesCache$4;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;JLcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/binding/ProfileImagesCache;->d(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->e:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/binding/ProfileImagesCache$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/ProfileImagesCache$2;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ProfileImage;

    .line 256
    iget-object v3, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    return-void
.end method

.method private static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 356
    .line 357
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->c:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/binding/ProfileImagesCache$ImagesURLQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_1

    .line 362
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_1
    return-object v3
.end method

.method static synthetic c(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static d(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 379
    .line 381
    :try_start_0
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->c:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/binding/ProfileImagesCache$ImagesQuery;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 386
    :cond_0
    if-eqz v1, :cond_1

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    :cond_2
    :goto_0
    return-object v0

    .line 389
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 390
    if-nez v0, :cond_5

    .line 391
    if-eqz v1, :cond_4

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 394
    :cond_5
    :try_start_3
    invoke-static {v0}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 399
    if-eqz v1, :cond_2

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 396
    :goto_1
    :try_start_4
    const-string v2, "ProfileImageCache"

    const-string v3, "cannot decode profile image"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    if-eqz v1, :cond_6

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_7

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 399
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 395
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/katana/binding/ProfileImagesCache;->b()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/WorkerThread;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    .line 126
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ProfileImage;

    .line 128
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 130
    if-eqz v0, :cond_2

    .line 131
    iget-object v2, v0, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    move-object v0, v1

    .line 162
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/binding/ProfileImage;->b()V

    move-object v0, v1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Lcom/facebook/katana/binding/ProfileImage;

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/facebook/katana/binding/ProfileImage;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_3
    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(IJLcom/facebook/katana/binding/ProfileImage;)Lcom/facebook/katana/binding/ProfileImage;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4b

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/facebook/katana/binding/ProfileImagesCache;->b()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object p4
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    .line 90
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 174
    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->b:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, p1, v3, v4, v0}, Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/facebook/katana/binding/ProfileImagesCache$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/katana/binding/ProfileImagesCache$1;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;Ljava/util/Map;)V

    .line 196
    invoke-virtual {p1, v0}, Lcom/facebook/katana/binding/AppSession;->c(Lcom/facebook/katana/binding/AppSessionListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/binding/WorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/katana/binding/ProfileImagesCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    .line 80
    return-void
.end method
