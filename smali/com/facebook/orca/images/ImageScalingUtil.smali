.class public Lcom/facebook/orca/images/ImageScalingUtil;
.super Ljava/lang/Object;
.source "ImageScalingUtil.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    invoke-static {p1, p2, v0, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    mul-int v0, p1, p0

    shl-int/lit8 v1, v0, 0x2

    .line 148
    mul-int/lit8 v0, p3, 0x11

    mul-int/2addr v0, p2

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v0, 0xa

    .line 149
    const/4 v0, 0x1

    .line 150
    :goto_0
    if-le v1, v2, :cond_0

    .line 151
    shl-int/lit8 v0, v0, 0x1

    .line 152
    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 154
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageScalingUtil;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 37
    if-le v3, v4, :cond_1

    .line 38
    if-le v3, p1, :cond_2

    .line 39
    int-to-float v0, p1

    int-to-float v5, v3

    div-float/2addr v0, v5

    .line 48
    :goto_0
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 51
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    :cond_0
    return-object p0

    .line 42
    :cond_1
    if-le v4, p1, :cond_2

    .line 43
    int-to-float v0, p1

    int-to-float v5, v4

    div-float/2addr v0, v5

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    .line 184
    if-ne p1, v6, :cond_0

    .line 210
    :goto_0
    return-object p0

    .line 188
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 190
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move p1, v6

    .line 203
    :cond_1
    :goto_1
    if-ne p1, v0, :cond_6

    .line 204
    const/high16 v0, 0x4334

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 210
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 192
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 193
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move p1, v0

    .line 194
    goto :goto_1

    .line 195
    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    .line 196
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    const/4 p1, 0x6

    goto :goto_1

    .line 198
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 199
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 200
    const/16 p1, 0x8

    goto :goto_1

    .line 205
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 206
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    .line 207
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 208
    const/high16 v0, 0x4387

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2
.end method

.method private c(Lcom/facebook/orca/attachments/MediaAttachment;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    .line 162
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp-rotate_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/images/ImageScalingUtil$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/images/ImageScalingUtil$1;-><init>(Lcom/facebook/orca/images/ImageScalingUtil;Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 172
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    :goto_0
    return v0

    .line 175
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    .line 178
    :cond_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v0, "Orientation"

    invoke-virtual {v1, v0, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-static {v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 76
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v2, v0}, Lcom/facebook/orca/images/ImageScalingUtil;->a(II)I

    move-result v0

    .line 80
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 85
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 87
    :try_start_4
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 89
    if-nez v0, :cond_1

    move-object v0, v1

    .line 105
    :goto_1
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 76
    :cond_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0, p2, p2}, Lcom/facebook/orca/images/ImageScalingUtil;->a(IIII)I

    move-result v0

    goto :goto_0

    .line 87
    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    :cond_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;->c(Lcom/facebook/orca/attachments/MediaAttachment;)I

    move-result v1

    .line 96
    invoke-static {v0, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final b(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 113
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 118
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_1

    .line 120
    :cond_0
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 131
    :goto_0
    return-object v0

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 124
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/images/ImageScalingUtil;->a(II)I

    move-result v0

    .line 125
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 127
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 129
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
.end method
