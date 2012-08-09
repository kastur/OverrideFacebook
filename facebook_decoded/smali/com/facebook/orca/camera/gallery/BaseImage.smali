.class public abstract Lcom/facebook/orca/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImage;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/net/Uri;

.field protected c:J

.field private d:Ljava/lang/String;

.field private final e:J

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/orca/camera/gallery/BaseImageList;


# direct methods
.method protected constructor <init>(Lcom/facebook/orca/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->g:Lcom/facebook/orca/camera/gallery/BaseImageList;

    .line 63
    iput-object p2, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->a:Landroid/content/ContentResolver;

    .line 64
    iput-wide p3, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->c:J

    .line 65
    iput-object p6, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->b:Landroid/net/Uri;

    .line 67
    iput-object p7, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->d:Ljava/lang/String;

    .line 68
    iput-wide p11, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->e:J

    .line 71
    iput-object p13, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->f:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private a(IIZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->g:Lcom/facebook/orca/camera/gallery/BaseImageList;

    iget-wide v1, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/camera/gallery/BaseImageList;->a(J)Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->a:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/facebook/orca/camera/Util;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImage;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, -0x1

    const/high16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/orca/camera/gallery/BaseImage;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->e:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/facebook/orca/camera/gallery/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->b:Landroid/net/Uri;

    check-cast p1, Lcom/facebook/orca/camera/gallery/Image;

    iget-object v1, p1, Lcom/facebook/orca/camera/gallery/Image;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImage;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
