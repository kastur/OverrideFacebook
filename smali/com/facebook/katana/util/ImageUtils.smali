.class public Lcom/facebook/katana/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final a:Landroid/graphics/Paint;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/graphics/Paint;

.field private static final d:Landroid/graphics/Paint;

.field private static final e:Landroid/graphics/Paint;

.field private static f:F

.field private static g:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/util/ImageUtils;->a:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    sput-object v0, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "FNumber"

    aput-object v3, v2, v5

    const-string v3, "ExposureTime"

    aput-object v3, v2, v6

    const-string v3, "ISOSpeedRatings"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "GPSAltitude"

    aput-object v3, v2, v5

    const-string v3, "GPSAltitudeRef"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FocalLength"

    aput-object v3, v2, v5

    const-string v3, "GPSDateStamp"

    aput-object v3, v2, v6

    const-string v3, "GPSTimeStamp"

    aput-object v3, v2, v4

    const-string v3, "GPSProcessingMethod"

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DateTime"

    aput-object v3, v2, v5

    const-string v3, "Flash"

    aput-object v3, v2, v6

    const-string v3, "Orientation"

    aput-object v3, v2, v4

    const-string v3, "GPSLatitude"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "GPSLatitudeRef"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "GPSLongitude"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "GPSLongitudeRef"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Make"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Model"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "WhiteBalance"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 168
    sput-object v0, Lcom/facebook/katana/util/ImageUtils;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->c:Landroid/graphics/Paint;

    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 175
    sput-object v0, Lcom/facebook/katana/util/ImageUtils;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->d:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 182
    sput-object v0, Lcom/facebook/katana/util/ImageUtils;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->e:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 823
    const/high16 v0, 0x40e0

    sput v0, Lcom/facebook/katana/util/ImageUtils;->f:F

    .line 824
    const/high16 v0, 0x4248

    sput v0, Lcom/facebook/katana/util/ImageUtils;->g:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    return-void
.end method

.method private static a(IIIIIZ)F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    if-eqz p5, :cond_2

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 559
    :cond_0
    :goto_0
    if-gt p1, p3, :cond_1

    if-le p0, p4, :cond_3

    .line 560
    :cond_1
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 561
    int-to-float v1, p0

    int-to-float v2, p4

    div-float/2addr v1, v2

    .line 562
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 564
    :goto_1
    return v0

    :cond_2
    move v3, p0

    move p0, p1

    move p1, v3

    .line 556
    goto :goto_0

    .line 564
    :cond_3
    const/high16 v0, 0x3f80

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 773
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "orientation"

    aput-object v1, v2, v7

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v8, :cond_0

    move v0, v6

    .line 792
    :goto_0
    return v0

    .line 786
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 787
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/ImageUtils;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 792
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1014
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1017
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1018
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1019
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1020
    int-to-float v6, p2

    .line 1022
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1023
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1024
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1025
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1027
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1028
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    return-object v1

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1035
    :cond_0
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageSource;

    invoke-direct {v1, p1}, Lcom/facebook/katana/util/ImageUtils$ImageSource;-><init>(Landroid/net/Uri;)V

    .line 689
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 690
    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/ImageUtils$ImageSource;IIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageIOException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/util/ImageUtils$ImageIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x3c0

    .line 530
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/util/ImageUtils$ImageSource;IIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x3f9851ec

    .line 718
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 725
    const/4 v6, 0x0

    .line 742
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/ImageUtils;->a(IIIIIZ)F

    move-result v2

    .line 744
    const/high16 v1, 0x3f80

    .line 745
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move-object v0, v6

    .line 746
    :goto_0
    const/high16 v4, 0x4000

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 751
    float-to-int v4, v3

    if-ne v4, v1, :cond_0

    .line 762
    :goto_1
    float-to-int v1, v3

    .line 748
    mul-float/2addr v3, v7

    .line 749
    mul-float/2addr v2, v7

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1

    .line 756
    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 757
    float-to-int v1, v3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 758
    invoke-virtual {p1, p0, v0}, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 759
    invoke-static {v0, p2, p5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 766
    :cond_1
    const-class v1, Lcom/facebook/katana/util/ImageUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to resize image, even after additional subsampling"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1

    .line 760
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 950
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 465
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 466
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 468
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 473
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    sget-object v4, Lcom/facebook/katana/util/ImageUtils;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, p0, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 477
    return-object v1

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    :cond_1
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 435
    .line 437
    const/16 v0, 0x38

    const/16 v2, 0x38

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 438
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 439
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x38

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x38

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x38

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x38

    const/16 v7, 0x38

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_0
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method private static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    if-eqz p2, :cond_0

    if-gtz p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-object p0

    .line 574
    :cond_1
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 575
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 576
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1170
    invoke-static {p0, p1}, Lcom/facebook/katana/activity/media/Storage;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1175
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-static {p0, p1, p1}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_0

    move-object v0, v1

    .line 420
    :goto_0
    return-object v0

    .line 409
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 411
    const-wide/high16 v4, 0x3ff0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 414
    int-to-double v4, p1

    div-double v2, v4, v2

    double-to-int v0, v2

    move v6, v0

    move v0, p1

    move p1, v6

    .line 420
    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_1
    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->b(Ljava/lang/String;)Lcom/facebook/katana/util/ImageUtils$Dimension;

    move-result-object v1

    .line 332
    iget v0, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    if-gt v0, p1, :cond_0

    iget v0, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    if-gt v0, p2, :cond_0

    .line 333
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget v0, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v0, v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 337
    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 339
    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 340
    int-to-float v0, p1

    .line 344
    :goto_1
    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 345
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 346
    iget v1, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    float-to-int v0, v0

    div-int v0, v1, v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 347
    invoke-static {p0, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    iget v0, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1

    .line 350
    :cond_2
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v1, 0x0

    .line 242
    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->b(Ljava/lang/String;)Lcom/facebook/katana/util/ImageUtils$Dimension;

    move-result-object v4

    .line 247
    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    const/16 v3, 0x3bd

    if-gt v0, v3, :cond_0

    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    const/16 v3, 0x3bd

    if-le v0, v3, :cond_4

    .line 248
    :cond_0
    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v0, v0

    const v3, 0x446f4000

    div-float/2addr v0, v3

    .line 249
    iget v3, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    int-to-float v3, v3

    const v5, 0x446f4000

    div-float/2addr v3, v5

    .line 250
    cmpl-float v5, v0, v3

    if-lez v5, :cond_2

    .line 251
    const v3, 0x446f4000

    .line 252
    iget v5, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    int-to-float v5, v5

    div-float v0, v5, v0

    .line 258
    :goto_0
    iget v5, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 259
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    iget v4, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    float-to-int v6, v3

    div-int/2addr v4, v6

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 261
    invoke-static {p0, v5}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move v4, v0

    .line 272
    :goto_1
    float-to-int v0, v3

    add-int/lit8 v0, v0, 0x3

    float-to-int v2, v4

    add-int/lit8 v2, v2, 0x3

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 274
    :try_start_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v1, v2, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x3

    const/4 v8, 0x3

    float-to-int v9, v3

    add-int/lit8 v9, v9, 0x1

    float-to-int v10, v4

    invoke-direct {v2, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/facebook/katana/util/ImageUtils;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 293
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v5, 0x4040

    add-float/2addr v3, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v3, v5

    const/high16 v5, 0x4040

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    sget-object v5, Lcom/facebook/katana/util/ImageUtils;->e:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    if-eqz v7, :cond_1

    .line 313
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v6

    .line 254
    :cond_2
    :try_start_3
    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v0, v0

    div-float v3, v0, v3

    .line 255
    const v0, 0x446f4000

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    move v4, v0

    .line 265
    goto :goto_1

    .line 266
    :cond_4
    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v3, v0

    .line 267
    iget v0, v4, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    int-to-float v0, v0

    .line 268
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    move v4, v0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :goto_2
    if-eqz v1, :cond_5

    .line 308
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 310
    :cond_5
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_6

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw v0

    .line 312
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_3

    .line 306
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 929
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    if-nez v0, :cond_0

    .line 931
    new-instance v0, Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;

    invoke-direct {v0}, Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1

    .line 933
    :cond_0
    return-object v0
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/util/ImageUtils;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x96

    const/high16 v0, 0x4316

    .line 365
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->b([B)Lcom/facebook/katana/util/ImageUtils$Dimension;

    move-result-object v1

    .line 366
    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    if-gt v2, v3, :cond_0

    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    if-gt v2, v3, :cond_0

    .line 367
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 370
    :cond_0
    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 371
    iget v3, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 373
    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 378
    :goto_1
    iget v2, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 379
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 380
    iget v1, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    float-to-int v0, v0

    div-int v0, v1, v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 381
    invoke-static {p0, v2}, Lcom/facebook/katana/util/ImageUtils;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    iget v0, v1, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_1

    .line 384
    :cond_2
    invoke-static {p0}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BIIIZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 660
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageSource;

    invoke-direct {v1, p0}, Lcom/facebook/katana/util/ImageUtils$ImageSource;-><init>([B)V

    .line 663
    const/4 v0, 0x0

    const/16 v3, 0x3c0

    const/16 v4, 0x3c0

    move v2, p1

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/ImageUtils$ImageSource;IIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 665
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen with byte arrays"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([BIZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x3c0

    .line 543
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 900
    if-nez v0, :cond_0

    .line 901
    new-instance v0, Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;

    invoke-direct {v0}, Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1

    .line 903
    :cond_0
    return-object v0
.end method

.method private static a(IIII)Lcom/facebook/katana/util/ImageUtils$Dimension;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 837
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 838
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/ImageUtils$Dimension;

    invoke-direct {v0, v1, v1}, Lcom/facebook/katana/util/ImageUtils$Dimension;-><init>(II)V

    .line 846
    :goto_0
    return-object v0

    .line 841
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 842
    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 844
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 846
    new-instance v0, Lcom/facebook/katana/util/ImageUtils$Dimension;

    int-to-float v2, p0

    div-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, p1

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Lcom/facebook/katana/util/ImageUtils$Dimension;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 859
    if-nez p1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 863
    :cond_0
    if-nez p2, :cond_1

    .line 864
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 868
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    const v0, 0x7f080079

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 870
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 872
    sget v1, Lcom/facebook/katana/util/ImageUtils;->f:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 875
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 877
    sget v2, Lcom/facebook/katana/util/ImageUtils;->g:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 880
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v2, v2}, Lcom/facebook/katana/util/ImageUtils;->a(IIII)Lcom/facebook/katana/util/ImageUtils$Dimension;

    move-result-object v2

    .line 881
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v2, Lcom/facebook/katana/util/ImageUtils$Dimension;->b:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget v2, v2, Lcom/facebook/katana/util/ImageUtils$Dimension;->a:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    const/4 v1, 0x0

    .line 1108
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, p3, p4, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1110
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v0, p5, p2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/File;)V

    .line 1111
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p1, p2, v0, v2}, Lcom/facebook/katana/util/ImageUtils;->b(Ljava/io/File;Ljava/io/File;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    if-eqz v1, :cond_0

    .line 1115
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1117
    :cond_0
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 1115
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1117
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1118
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/File;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1073
    .line 1075
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1076
    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1077
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot compress bitmap to file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1087
    :goto_0
    :try_start_2
    new-instance v2, Lcom/facebook/katana/util/ImageUtils$ImageIOException;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/katana/util/ImageUtils$ImageIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 1091
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1097
    :cond_0
    :goto_2
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0

    .line 1083
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1085
    return-void

    :catch_1
    move-exception v1

    goto :goto_2

    .line 1089
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 1098
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1132
    const/4 v1, 0x0

    .line 1134
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1135
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v0, p3, p1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/File;)V

    .line 1136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p0, p1, v0, v2}, Lcom/facebook/katana/util/ImageUtils;->b(Ljava/io/File;Ljava/io/File;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    if-eqz v1, :cond_0

    .line 1140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1142
    :cond_0
    return-void

    .line 1143
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1142
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1143
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method

.method public static a([BLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1003
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1005
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1006
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1155
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    .line 1156
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1158
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1162
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .parameter

    .prologue
    .line 987
    const/16 v0, 0x1000

    :try_start_0
    new-array v1, v0, [B

    .line 988
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 989
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 991
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 992
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 993
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 499
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 501
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 503
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    move v2, p1

    .line 508
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, p1, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, p1, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v6, v7, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 511
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 512
    return-object v1

    .line 505
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    move v0, p1

    .line 506
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 517
    :cond_1
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/katana/util/ImageUtils$Dimension;
    .locals 3
    .parameter

    .prologue
    .line 189
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$Dimension;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/util/ImageUtils$Dimension;-><init>(II)V

    return-object v1
.end method

.method private static b([B)Lcom/facebook/katana/util/ImageUtils$Dimension;
    .locals 3
    .parameter

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 200
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$Dimension;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/util/ImageUtils$Dimension;-><init>(II)V

    return-object v1
.end method

.method private static b(Ljava/io/File;Ljava/io/File;II)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1043
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1044
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1046
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1048
    sget-object v0, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_0

    .line 1050
    sget-object v1, Lcom/facebook/katana/util/ImageUtils;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v6, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 1051
    invoke-virtual {v2, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1052
    if-eqz v8, :cond_1

    .line 1053
    invoke-virtual {v3, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    :cond_2
    const-string v0, "Width"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v0, "Length"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    new-instance v1, Lcom/facebook/katana/util/ImageUtils$ImageIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyExif from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/util/ImageUtils$ImageIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 802
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 819
    :goto_0
    :pswitch_0
    return v0

    .line 810
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 812
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 814
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 816
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
