.class Lcom/facebook/orca/camera/gallery/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImage;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/gallery/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/camera/gallery/UriImage;->b:Landroid/content/ContentResolver;

    .line 43
    iput-object p3, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method private a(IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    const/16 v0, 0x140

    const/high16 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/facebook/orca/camera/gallery/UriImage;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(IIZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/UriImage;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/orca/camera/Util;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/UriImage;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "UriImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v1, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 53
    const/16 v0, 0xb4

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 55
    const/16 v0, 0x5a

    goto :goto_0

    .line 56
    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 57
    const/16 v0, 0x10e

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/UriImage;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, -0x1

    const/high16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/orca/camera/gallery/UriImage;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 147
    const/16 v0, 0x140

    const/high16 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/camera/gallery/UriImage;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/UriImage;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
