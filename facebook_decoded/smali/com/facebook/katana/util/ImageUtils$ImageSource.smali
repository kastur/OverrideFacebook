.class Lcom/facebook/katana/util/ImageUtils$ImageSource;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# instance fields
.field private final a:[B

.field private final b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    .line 601
    iput-object p1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    .line 602
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    .line 596
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 635
    :goto_0
    return-object v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 631
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 633
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 637
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "neither mData nor mUri are set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter

    .prologue
    .line 606
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 609
    iget-object v1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->a:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 619
    :goto_0
    return-object v0

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/util/ImageUtils$ImageSource;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 613
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 614
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "neither mData nor mUri are set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
