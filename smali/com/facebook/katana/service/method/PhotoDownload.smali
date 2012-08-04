.class public Lcom/facebook/katana/service/method/PhotoDownload;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PhotoDownload.java"

# interfaces
.implements Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;


# instance fields
.field private final a:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:Lcom/facebook/katana/binding/StreamPhoto;

.field private r:Landroid/graphics/Bitmap;

.field private s:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v3, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 64
    iput-wide p3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->a:J

    .line 65
    iput-object p5, p0, Lcom/facebook/katana/service/method/PhotoDownload;->f:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/facebook/katana/service/method/PhotoDownload;->g:Ljava/lang/String;

    .line 67
    iput p8, p0, Lcom/facebook/katana/service/method/PhotoDownload;->h:I

    .line 68
    invoke-static {p1}, Lcom/facebook/katana/util/FileUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->i:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/facebook/katana/binding/StreamPhoto;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    const/4 v6, 0x0

    .line 217
    const/16 v0, 0x96

    const/16 v1, 0x96

    :try_start_0
    invoke-static {p2, v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 220
    invoke-static {p0}, Lcom/facebook/katana/util/FileUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 223
    :goto_0
    const/16 v1, 0x50

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/File;)V

    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 228
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "filename"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->h:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    new-instance v0, Lcom/facebook/katana/binding/StreamPhoto;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 237
    return-object v0

    .line 221
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 238
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/PhotoDownload;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PhotoDownload;->k()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;[B)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    .line 301
    :try_start_0
    invoke-static {p4}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 302
    const/16 v0, 0x38

    const/16 v2, 0x38

    :try_start_1
    invoke-static {v3, v0, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 303
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 305
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    .line 307
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 311
    :try_start_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 312
    const-string v3, "thumbnail"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 313
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->g:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aid IN(?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    return-void

    .line 321
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_0
    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/service/method/PhotoDownload;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/facebook/katana/binding/StreamPhoto;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 254
    .line 257
    :try_start_0
    invoke-static {p2}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 258
    const/high16 v0, 0x4248

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    .line 259
    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ImageUtils;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 260
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 263
    :try_start_3
    invoke-static {p0}, Lcom/facebook/katana/util/FileUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 264
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/File;)V

    .line 268
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 269
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "filename"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->h:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 273
    new-instance v0, Lcom/facebook/katana/binding/StreamPhoto;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 278
    return-object v0

    :catchall_0
    move-exception v0

    move-object v6, v7

    :goto_0
    if-eqz v7, :cond_0

    .line 279
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_0
    if-eqz v6, :cond_1

    .line 282
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0

    .line 278
    :catchall_1
    move-exception v0

    move-object v6, v7

    move-object v7, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/PhotoDownload;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 352
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->b:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/service/method/PhotoDownload;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 337
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 338
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 339
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->b:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method private k()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotoDownload;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a([BLjava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "Failed to output to file."

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    :try_start_0
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotoDownload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v6, v2, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    return-void
.end method

.method public final a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 133
    const-wide/16 v4, 0x0

    .line 134
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    .line 135
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-static {p4}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    .line 138
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    array-length v2, v2

    int-to-long v4, v2

    .line 139
    iget v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 178
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v6, p2

    .line 189
    :goto_1
    invoke-static {v6}, Lcom/facebook/katana/service/method/ApiLogging;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    iget-object v1, p1, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation;->b()J

    move-result-wide v2

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiLogging;->a(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 196
    :cond_0
    invoke-super {p0, v6, p3, p5}, Lcom/facebook/katana/service/method/ApiMethod;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 197
    return-void

    .line 141
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    invoke-static {v2, v3, v7}, Lcom/facebook/katana/service/method/PhotoDownload;->a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/facebook/katana/binding/StreamPhoto;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->j:Lcom/facebook/katana/binding/StreamPhoto;

    move-object v0, v1

    .line 142
    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    invoke-static {v2, v3, v7}, Lcom/facebook/katana/service/method/PhotoDownload;->b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/facebook/katana/binding/StreamPhoto;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->j:Lcom/facebook/katana/binding/StreamPhoto;

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    iget-wide v7, p0, Lcom/facebook/katana/service/method/PhotoDownload;->a:J

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    invoke-static {v2, v7, v8, v3, v9}, Lcom/facebook/katana/service/method/PhotoDownload;->a(Landroid/content/Context;JLjava/lang/String;[B)V

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotoDownload;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    invoke-static {v2, v3, v7}, Lcom/facebook/katana/service/method/PhotoDownload;->c(Landroid/content/Context;Ljava/lang/String;[B)V

    move-object v0, v1

    .line 154
    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    invoke-static {v2}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/method/PhotoDownload;->r:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_0
    move-exception p5

    .line 178
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p3, v0

    goto :goto_1

    .line 163
    :pswitch_5
    :try_start_2
    new-instance v2, Lcom/facebook/katana/service/method/PhotoDownload$WriteDataToFileTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/service/method/PhotoDownload$WriteDataToFileTask;-><init>(Lcom/facebook/katana/service/method/PhotoDownload;B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/service/method/PhotoDownload$WriteDataToFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception p5

    .line 178
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p3, v0

    goto/16 :goto_1

    .line 178
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0

    :cond_2
    move-object p3, v0

    goto/16 :goto_1

    :cond_3
    move v6, p2

    goto/16 :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final h()Lcom/facebook/katana/binding/StreamPhoto;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->j:Lcom/facebook/katana/binding/StreamPhoto;

    return-object v0
.end method

.method public final i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final j()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoDownload;->s:[B

    return-object v0
.end method
