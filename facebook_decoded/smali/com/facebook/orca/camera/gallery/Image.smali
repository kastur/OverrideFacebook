.class public Lcom/facebook/orca/camera/gallery/Image;
.super Lcom/facebook/orca/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImage;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
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
    .line 47
    invoke-direct/range {p0 .. p14}, Lcom/facebook/orca/camera/gallery/BaseImage;-><init>(Lcom/facebook/orca/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 49
    iput p15, p0, Lcom/facebook/orca/camera/gallery/Image;->d:I

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 153
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/Image;->a:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/facebook/orca/camera/gallery/Image;->c:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/Image;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/facebook/orca/camera/gallery/Image;->d:I

    return v0
.end method
