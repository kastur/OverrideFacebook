.class public Lcom/facebook/orca/photos/tiles/UserTileViewLogic;
.super Ljava/lang/Object;
.source "UserTileViewLogic.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaHttpConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/OrcaHttpConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/PicCropInfo;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/PicCropInfo;->b()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v4

    invoke-static {v4, p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 79
    :goto_0
    if-nez v1, :cond_2

    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->c()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "large"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 87
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-static {p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 95
    :cond_0
    :goto_1
    return-object v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-static {p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 99
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

.method private static a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 117
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->j()Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;-><init>(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/users/User;I)Lcom/facebook/orca/images/FetchImageParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    return-object v0
.end method
