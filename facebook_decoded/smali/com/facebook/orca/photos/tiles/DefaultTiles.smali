.class public Lcom/facebook/orca/photos/tiles/DefaultTiles;
.super Ljava/lang/Object;
.source "DefaultTiles.java"


# static fields
.field public static a:I


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

.field private final d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final e:Lcom/facebook/orca/cache/ThreadDisplayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const/16 v0, 0xff

    const/16 v1, 0xcc

    const/16 v2, 0xd3

    const/16 v3, 0xe0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/photos/tiles/DefaultTilesCache;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/cache/ThreadDisplayCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/res/Resources;

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 48
    iput-object p4, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 49
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 283
    const-string v0, "orca:DefaultTiles"

    const-string v1, "Bitmap resize with canvas drawing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 287
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 288
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 290
    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    if-eq p2, p3, :cond_0

    .line 244
    invoke-static {p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 263
    const-string v0, "orca:DefaultTiles"

    const-string v1, "Bitmap resize with GraphicSizer"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/orca/photos/sizing/GraphicSizer;-><init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V

    .line 266
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 270
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    new-instance v1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    sget v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;-><init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    sget v2, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {p0, v0, p3, p4, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;Landroid/graphics/Bitmap;)V

    .line 207
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private c(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->EMAIL:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_default_email_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private d(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->SMS:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_default_sms_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static e(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 218
    const-string v0, "orca:DefaultTiles"

    const-string v1, "Sizing container for unequal resizing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p0

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->THREAD:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_default_group_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_1

    .line 106
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->EMAIL:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_2

    .line 108
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->USER:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_default_user_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-static {p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
