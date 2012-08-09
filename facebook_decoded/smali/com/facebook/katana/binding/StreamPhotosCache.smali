.class public Lcom/facebook/katana/binding/StreamPhotosCache;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/facebook/katana/binding/WorkerThread;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->c:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->d:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->b:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/StreamPhotosCache;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->h:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/binding/StreamPhotosCache$StreamPhotoQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->h:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 275
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 279
    new-instance v4, Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return-object v11

    .line 281
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/binding/StreamPhotosCache;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->c:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/binding/StreamPhotosCache$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/StreamPhotosCache$2;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    monitor-enter p0

    .line 211
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/StreamPhoto;

    .line 217
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    .line 222
    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    cmp-long v0, v2, p2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 226
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/binding/StreamPhotosCache$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/binding/StreamPhotosCache$3;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/binding/StreamPhotosCache;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/facebook/katana/binding/StreamPhotosCache;)Lcom/facebook/katana/binding/WorkerThread;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    monitor-enter p0

    const/4 v1, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/StreamPhoto;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->f()V

    .line 136
    invoke-virtual {v0}, Lcom/facebook/katana/binding/StreamPhoto;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 138
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->b:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 148
    :goto_0
    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->b:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/katana/binding/StreamPhoto;)Lcom/facebook/katana/binding/StreamPhoto;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0x7a120

    .line 170
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 171
    invoke-virtual {p4}, Lcom/facebook/katana/binding/StreamPhoto;->d()J

    move-result-wide v0

    .line 172
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    .line 173
    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    add-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 174
    :cond_0
    sub-long v2, v6, v0

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;J)V

    .line 176
    :cond_1
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/facebook/katana/binding/StreamPhoto;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->e:J

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-object p4

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    .line 110
    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->f:Lcom/facebook/katana/binding/WorkerThread;

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/katana/binding/StreamPhotosCache$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/binding/StreamPhotosCache$1;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/StreamPhoto;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p2}, Lcom/facebook/katana/binding/StreamPhoto;->a(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_0
    return-void
.end method
