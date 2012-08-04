.class public Lcom/facebook/orca/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/facebook/orca/camera/ImageManager;->a:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/facebook/orca/camera/ImageManager;->b:Landroid/net/Uri;

    .line 60
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    sput-object v0, Lcom/facebook/orca/camera/ImageManager;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/camera/ImageManager;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 223
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    if-eqz p7, :cond_1

    .line 231
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p7, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 232
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, p9, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 244
    :goto_0
    invoke-static {v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    .line 247
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 248
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "_display_name"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "orientation"

    aget v3, p9, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/facebook/orca/camera/ImageManager;->a:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    return-object v0

    .line 234
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 235
    const/4 v3, 0x0

    invoke-static {v1}, Lcom/facebook/orca/camera/ImageManager;->b(Ljava/lang/String;)I

    move-result v4

    aput v4, p9, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    :goto_2
    :try_start_3
    const-string v3, "ImageManager"

    invoke-static {v3, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    invoke-static {v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 240
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 241
    :goto_3
    :try_start_4
    const-string v3, "ImageManager"

    invoke-static {v3, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    invoke-static {v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 240
    :catch_2
    move-exception v1

    goto :goto_3

    .line 237
    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private static a(Landroid/net/Uri;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter

    .prologue
    .line 443
    new-instance v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/facebook/orca/camera/ImageManager$ImageListParam;-><init>()V

    .line 444
    iput-object p0, v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    .line 445
    return-object v0
.end method

.method private static a(Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    new-instance v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/facebook/orca/camera/ImageManager$ImageListParam;-><init>()V

    .line 435
    iput-object p0, v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->a:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    .line 436
    iput p1, v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->b:I

    .line 437
    iput p2, v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->c:I

    .line 438
    iput-object p3, v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 439
    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImageList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-static {p1}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/net/Uri;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$ImageListParam;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/facebook/orca/camera/gallery/IImageList;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    const-string v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    sget-object v0, Lcom/facebook/orca/camera/ImageManager$DataLocation;->ALL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    .line 383
    :goto_1
    return-object v0

    .line 367
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 376
    :cond_1
    const-string v1, "content://media/external/video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    sget-object v0, Lcom/facebook/orca/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_2
    invoke-static {v0}, Lcom/facebook/orca/camera/ImageManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-static {p0, p1}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1

    .line 382
    :cond_3
    const-string v0, "bucketId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/facebook/orca/camera/ImageManager$DataLocation;->ALL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    invoke-static {p0, v1, v2, v2, v0}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/gallery/IImageList;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/orca/camera/ImageManager;->a(Lcom/facebook/orca/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 458
    invoke-static {p0, v0}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$ImageListParam;)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/facebook/orca/camera/ImageManager$ImageListParam;)Lcom/facebook/orca/camera/gallery/IImageList;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 300
    iget-object v6, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->a:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    .line 301
    iget v7, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->b:I

    .line 302
    iget v4, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->c:I

    .line 303
    iget-object v5, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 304
    iget-object v1, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    .line 305
    iget-boolean v0, p1, Lcom/facebook/orca/camera/ImageManager$ImageListParam;->f:Z

    .line 307
    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 308
    :cond_0
    new-instance v0, Lcom/facebook/orca/camera/ImageManager$EmptyImageList;

    invoke-direct {v0, v9}, Lcom/facebook/orca/camera/ImageManager$EmptyImageList;-><init>(B)V

    .line 361
    :goto_0
    return-object v0

    .line 311
    :cond_1
    if-eqz v1, :cond_2

    .line 312
    new-instance v0, Lcom/facebook/orca/camera/gallery/SingleImageList;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {v9}, Lcom/facebook/orca/camera/ImageManager;->a(Z)Z

    move-result v0

    .line 319
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 321
    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/orca/camera/ImageManager$DataLocation;->INTERNAL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    if-eq v6, v0, :cond_3

    .line 322
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    .line 323
    new-instance v0, Lcom/facebook/orca/camera/gallery/ImageList;

    sget-object v2, Lcom/facebook/orca/camera/ImageManager;->a:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/orca/camera/ImageManager;->b:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_3
    sget-object v0, Lcom/facebook/orca/camera/ImageManager$DataLocation;->INTERNAL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    if-eq v6, v0, :cond_4

    sget-object v0, Lcom/facebook/orca/camera/ImageManager$DataLocation;->ALL:Lcom/facebook/orca/camera/ImageManager$DataLocation;

    if-ne v6, v0, :cond_5

    .line 331
    :cond_4
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    .line 332
    new-instance v0, Lcom/facebook/orca/camera/gallery/ImageList;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImageList;

    .line 348
    invoke-virtual {v0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    invoke-virtual {v0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->a()V

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 354
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 355
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImageList;

    goto :goto_0

    .line 359
    :cond_8
    new-instance v1, Lcom/facebook/orca/camera/gallery/ImageListUber;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/orca/camera/gallery/IImageList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/camera/gallery/IImageList;

    invoke-direct {v1, v0, v4}, Lcom/facebook/orca/camera/gallery/ImageListUber;-><init>([Lcom/facebook/orca/camera/gallery/IImageList;I)V

    move-object v0, v1

    .line 361
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/orca/camera/ImageManager;->a(Z)Z

    move-result v0

    return v0
.end method

.method private static a(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 504
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    if-eqz p0, :cond_0

    .line 506
    invoke-static {}, Lcom/facebook/orca/camera/ImageManager;->b()Z

    move-result v0

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 268
    const/4 v0, 0x0

    .line 269
    const/4 v2, 0x0

    .line 271
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    if-eqz v1, :cond_0

    .line 276
    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    if-eq v1, v5, :cond_0

    .line 280
    packed-switch v1, :pswitch_data_0

    .line 294
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    const-string v3, "ImageManager"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0

    .line 282
    :pswitch_1
    const/16 v0, 0x5a

    .line 283
    goto :goto_1

    .line 285
    :pswitch_2
    const/16 v0, 0xb4

    .line 286
    goto :goto_1

    .line 288
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 477
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 487
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 389
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
