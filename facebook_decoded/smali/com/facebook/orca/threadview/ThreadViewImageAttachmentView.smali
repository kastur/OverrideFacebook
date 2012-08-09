.class public Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;
.super Landroid/view/ViewGroup;
.source "ThreadViewImageAttachmentView.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/facebook/orca/threads/Message;

.field private l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

.field private o:I

.field private p:I

.field private q:[Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a:[I

    .line 64
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b:[I

    .line 85
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;B)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->n:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;B)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->n:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;B)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->n:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method private static a(ILcom/facebook/orca/attachments/ImageAttachmentData;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 421
    int-to-float v0, p0

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 550
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 551
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 552
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 556
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 557
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 558
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 559
    return-object v1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Landroid/graphics/Point;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 318
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->f()Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    move-result-object v1

    .line 321
    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->PORTRAIT:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->SQUARE:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->UNKNOWN:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-ne v1, v2, :cond_3

    .line 324
    :cond_0
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 325
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->i:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 326
    if-le v1, v2, :cond_1

    move v1, v2

    .line 329
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b(ILcom/facebook/orca/attachments/ImageAttachmentData;)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 343
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 344
    return-object v2

    .line 332
    :cond_2
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_3
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 336
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 337
    if-le v1, v2, :cond_4

    move v1, v2

    .line 340
    :cond_4
    invoke-static {v2, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(ILcom/facebook/orca/attachments/ImageAttachmentData;)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 341
    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b(ILcom/facebook/orca/attachments/ImageAttachmentData;)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)Lcom/facebook/orca/images/MultiFetchImageParams;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 495
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_composer_overlay_normal:I

    invoke-direct {p0, p2, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/images/UrlImageProcessor;I)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 500
    new-instance v1, Lcom/facebook/orca/images/FetchImageParams;

    sget v2, Lcom/facebook/orca/R$drawable;->orca_composer_overlay_pressed:I

    invoke-direct {p0, p2, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/images/UrlImageProcessor;I)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 505
    new-instance v2, Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->n:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$MyImageCompositor;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/images/MultiFetchImageParams;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/images/UrlImageCompositor;)V

    return-object v2
.end method

.method private a(Lcom/facebook/orca/images/UrlImageProcessor;I)Lcom/facebook/orca/images/UrlImageProcessor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/images/UrlImageProcessor;I)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Point;Z)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const v5, 0x3f19999a

    const/4 v4, 0x0

    .line 255
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    .line 266
    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    .line 267
    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    .line 269
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    .line 270
    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 167
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 168
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/attachments/ImageAttachmentData;Landroid/graphics/Point;)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 170
    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method private a(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/4 v4, 0x0

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(II)Landroid/graphics/Point;

    move-result-object v0

    .line 303
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 304
    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 305
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3, p3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 306
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p4}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v0, v3, :cond_1

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d()[Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    .line 312
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 314
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 105
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 106
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 108
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    .line 109
    const/16 v0, 0x6f

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    .line 110
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    .line 111
    const/16 v0, 0x98

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    .line 113
    const/16 v0, 0xbe

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->i:I

    .line 116
    const/16 v0, 0xe8

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:I

    .line 117
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 4
    .parameter

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    const-string v2, "imageData"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    const-string v2, "imageAttachments"

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const-string v2, "message"

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 484
    return-void
.end method

.method private a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/attachments/ImageAttachmentData;Landroid/graphics/Point;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 209
    :goto_0
    const/16 v3, 0x7c

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    iget v4, p3, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p3, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->r:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 217
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    .line 218
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->g()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceholderImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 226
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 228
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 230
    iget v0, p3, Landroid/graphics/Point;->y:I

    .line 231
    iget v3, p3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 243
    :goto_2
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 244
    const-string v4, "preview"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    const-string v4, "max_height"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    const-string v0, "max_width"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)Lcom/facebook/orca/images/MultiFetchImageParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setMultiFetchImageParams(Lcom/facebook/orca/images/MultiFetchImageParams;)V

    .line 250
    return-void

    :cond_2
    move v0, v1

    .line 208
    goto/16 :goto_0

    .line 214
    :cond_3
    invoke-static {p3, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/graphics/Point;Z)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    .line 215
    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->r:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 233
    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 235
    iget v1, p3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 236
    iget v1, p3, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 238
    :cond_5
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 241
    :cond_6
    const-wide/high16 v0, 0x3ff8

    iget v3, p3, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a:[I

    return-object v0
.end method

.method private static b(ILcom/facebook/orca/attachments/ImageAttachmentData;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 426
    int-to-float v0, p0

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->e()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private b(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 348
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 350
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 353
    const/4 v0, 0x1

    .line 354
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 355
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 356
    invoke-virtual {p0, v5, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    const/4 v1, 0x4

    if-ne v4, v1, :cond_1

    .line 359
    const/4 v0, 0x2

    .line 361
    :cond_1
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    .line 364
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 367
    return-void
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b:[I

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->removeAllViews()V

    .line 135
    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d()[Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    .line 139
    :goto_0
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 140
    new-instance v1, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/UrlImage;->setShowProgressBar(Z)V

    .line 142
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    invoke-virtual {v1, v4}, Lcom/facebook/orca/images/UrlImage;->setClickable(Z)V

    .line 145
    invoke-virtual {v1, v5}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    sget v2, Lcom/facebook/orca/R$drawable;->orca_photo_placeholder_background_border:I

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setPlaceholderBackgroundResourceId(I)V

    .line 147
    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->addView(Landroid/view/View;I)V

    .line 148
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 152
    :goto_1
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 153
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 154
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(I)V

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 157
    :cond_2
    :goto_2
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->m:I

    if-ge v1, v0, :cond_3

    .line 158
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 159
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->requestLayout()V

    .line 163
    return-void
.end method

.method private c(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    const/4 v6, 0x6

    .line 370
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 372
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 375
    const/4 v0, 0x1

    .line 376
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 377
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 378
    invoke-virtual {p0, v5, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    if-lt v4, v6, :cond_1

    .line 381
    const/4 v0, 0x2

    .line 383
    :cond_1
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    .line 386
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 389
    return-void
.end method

.method private d(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/high16 v5, 0x4000

    .line 393
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 395
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 397
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 399
    invoke-virtual {p0, v4, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 404
    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 406
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 407
    :goto_1
    if-ge v0, v3, :cond_1

    .line 408
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 409
    invoke-virtual {p0, v4, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_1
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    .line 415
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 418
    return-void
.end method

.method private d()[Landroid/graphics/Point;
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 180
    new-array v2, v1, [Landroid/graphics/Point;

    .line 181
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_8

    .line 182
    if-eq v1, v6, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 183
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    .line 181
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-ne v1, v7, :cond_3

    .line 185
    :cond_2
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 186
    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    .line 187
    if-ge v0, v6, :cond_4

    .line 188
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 190
    :cond_4
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 193
    :cond_5
    iget v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    if-nez v3, :cond_7

    .line 194
    :cond_6
    invoke-direct {p0, v8, v8}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(II)Landroid/graphics/Point;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 197
    :cond_7
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 201
    :cond_8
    return-object v2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 433
    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 435
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->f()Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    move-result-object v1

    .line 436
    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->PORTRAIT:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->SQUARE:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->UNKNOWN:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-ne v1, v2, :cond_2

    .line 439
    :cond_0
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 440
    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->i:I

    iget v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 441
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    sget-object v2, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->LANDSCAPE:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-ne v1, v2, :cond_1

    .line 443
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    .line 444
    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    iget v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 445
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    goto :goto_0

    .line 448
    :cond_3
    const/4 v4, 0x0

    .line 449
    sub-int v3, p4, p2

    .line 450
    const/4 v0, 0x0

    .line 451
    const/4 v2, 0x0

    .line 452
    const/4 v1, 0x1

    move v5, v0

    move v10, v3

    move v3, v4

    move v4, v10

    .line 454
    :goto_1
    if-ge v5, v6, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lt v4, v0, :cond_1

    .line 455
    invoke-virtual {p0, v5}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 456
    iget-object v7, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v3

    add-int v8, p3, v2

    iget-object v9, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v3, v2, v7, v8}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 461
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    .line 462
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/2addr v0, v7

    sub-int v0, v4, v0

    .line 463
    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-lt v0, v4, :cond_6

    const/4 v4, 0x4

    if-ne v6, v4, :cond_4

    const/4 v4, 0x1

    if-ne v5, v4, :cond_4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    :cond_4
    const/4 v4, 0x6

    if-ne v6, v4, :cond_5

    const/4 v4, 0x2

    if-ne v5, v4, :cond_5

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    :cond_5
    const/4 v4, 0x5

    if-ne v6, v4, :cond_7

    const/4 v4, 0x1

    if-ne v5, v4, :cond_7

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 467
    :cond_6
    sub-int v3, p4, p2

    .line 468
    const/4 v4, 0x0

    .line 469
    add-int/lit8 v0, v1, 0x1

    .line 470
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->q:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    move v2, v3

    move v3, v4

    .line 472
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    move v2, v1

    move v1, v0

    .line 473
    goto :goto_1

    :cond_7
    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    const/4 v4, 0x6

    .line 275
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    invoke-static {v1, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v1

    .line 281
    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    .line 282
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 283
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 284
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(IIII)V

    .line 292
    :cond_0
    :goto_0
    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->o:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->p:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMeasuredDimension(II)V

    .line 295
    return-void

    .line 285
    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 286
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b(II)V

    goto :goto_0

    .line 287
    :cond_3
    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    if-lt v2, v4, :cond_5

    .line 288
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c(II)V

    goto :goto_0

    .line 289
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d(II)V

    goto :goto_0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:Lcom/facebook/orca/threads/Message;

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->l:Lcom/google/common/collect/ImmutableList;

    .line 126
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c()V

    .line 127
    return-void
.end method
