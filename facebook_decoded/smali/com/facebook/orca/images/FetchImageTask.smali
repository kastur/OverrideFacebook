.class public Lcom/facebook/orca/images/FetchImageTask;
.super Lcom/facebook/orca/common/async/KeyedAsyncTask;
.source "FetchImageTask.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Lcom/facebook/orca/images/ImageCache;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private e:Lcom/facebook/orca/images/FetchImageParams;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Bitmap;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageTask;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 74
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    .line 75
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 76
    return-void
.end method

.method private a(Lcom/facebook/apache/http/HttpResponse;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    .line 293
    const-string v0, "Decode image stream"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 295
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 297
    :try_start_0
    const-string v2, "orca:FetchImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loaded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 299
    new-instance v3, Ljava/io/File;

    const-string v4, "temp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 303
    :cond_0
    const-string v2, "fetch_image_task"

    const-string v4, ""

    invoke-static {v2, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 306
    :try_start_1
    invoke-static {v0, v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/apache/http/HttpEntity;Ljava/io/File;)V

    .line 309
    const-string v0, "Scaling image"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 310
    new-instance v3, Lcom/facebook/orca/attachments/FileAttachment;

    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/orca/attachments/FileAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    .line 312
    invoke-virtual {v3}, Lcom/facebook/orca/attachments/FileAttachment;->g()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 313
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 320
    return-object v3

    .line 315
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0
.end method

.method private a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 146
    :cond_0
    const-string v0, "Download image"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    .line 150
    const-string v3, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask;->h()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 163
    const-string v2, "Insert into cache"

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 165
    :try_start_1
    sget-object v3, Lcom/facebook/orca/images/FetchImageTask$1;->a:[I

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, p1, v3, v4}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto :goto_0

    .line 152
    :cond_2
    :try_start_2
    const-string v3, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask;->i()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_3
    const-string v3, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask;->j()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 167
    :pswitch_0
    :try_start_3
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 168
    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 185
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    goto/16 :goto_0

    .line 171
    :pswitch_1
    :try_start_4
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, p1, v3, v4}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto/16 :goto_0

    .line 175
    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v0, p1, v3, v4}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto/16 :goto_0

    .line 182
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 279
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/facebook/apache/http/HttpEntity;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    :try_start_0
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntity;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 330
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntity;->h()V

    .line 331
    return-void

    .line 329
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 330
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntity;->h()V

    throw v0
.end method

.method private h()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    .line 228
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_7

    .line 229
    const-string v0, "orca:FetchImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Landroid/net/Uri;)V

    .line 231
    new-instance v3, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-string v4, "image"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v4

    .line 235
    const/16 v5, 0x12e

    if-ne v4, v5, :cond_3

    .line 236
    const-string v4, "Location"

    invoke-interface {v0, v4}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 237
    array-length v4, v0

    if-lez v4, :cond_2

    .line 238
    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    invoke-static {v2, v0}, Lcom/facebook/orca/images/FetchImageTask;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    :cond_0
    const-string v2, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v4, "attachment.fbsbx.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 247
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/apache/http/client/methods/HttpGet;->i()V

    .line 228
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto/16 :goto_0

    .line 251
    :cond_2
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    .line 270
    :goto_1
    return-object v0

    .line 252
    :cond_3
    const/16 v1, 0xc8

    if-ne v4, v1, :cond_5

    .line 253
    invoke-direct {p0, v0}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/apache/http/HttpResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_4

    .line 255
    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 257
    :cond_4
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 259
    :cond_5
    const/16 v0, 0x194

    if-ne v4, v0, :cond_6

    .line 260
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 263
    :cond_6
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "orca:FetchImageTask"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 270
    :cond_7
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_1
.end method

.method private i()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 341
    if-nez v1, :cond_0

    .line 342
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 345
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_1

    .line 347
    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 352
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 349
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 352
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private j()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/facebook/orca/attachments/FileAttachment;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/attachments/FileAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    .line 360
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/FileAttachment;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/UrlImageProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    :cond_0
    if-eqz v0, :cond_1

    .line 365
    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageCache;->d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v2, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/ImageCache;->d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    invoke-direct {p0, v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :cond_2
    if-eqz v0, :cond_3

    .line 121
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v2}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    const-string v3, "Running processor"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 124
    const-string v4, "orca:FetchImageTask"

    const-string v5, "Processing image"

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v0}, Lcom/facebook/orca/images/UrlImageProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 127
    invoke-virtual {v2}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_3

    sget-object v3, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 129
    const-string v2, "Inserting processed image into cache"

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 136
    :cond_3
    if-eqz v0, :cond_0

    .line 137
    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Lcom/facebook/orca/images/FetchImageParams;

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/FetchImageTask;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/orca/images/FetchImageTask;->h:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;->a(Landroid/graphics/Bitmap;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/images/FetchImageTask;->h:Z

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;

    .line 193
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    return-void
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 98
    invoke-virtual {p0}, Lcom/facebook/orca/images/FetchImageTask;->a()V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/images/FetchImageTask;->b()V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method
