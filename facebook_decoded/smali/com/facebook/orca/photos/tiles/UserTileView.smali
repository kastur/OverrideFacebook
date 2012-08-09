.class public Lcom/facebook/orca/photos/tiles/UserTileView;
.super Landroid/widget/FrameLayout;
.source "UserTileView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private c:Lcom/facebook/orca/images/UrlImage;

.field private d:Lcom/facebook/orca/users/UserKey;

.field private e:Lcom/facebook/orca/users/User;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/User;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_1
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/users/UserKey;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x32

    .line 50
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 51
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 52
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 54
    sget-object v0, Lcom/facebook/orca/R$styleable;->ThreadTileView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 56
    iget v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    if-ne v1, v3, :cond_0

    .line 57
    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v2, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public setTileSizePx(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 94
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 95
    return-void
.end method

.method public setUser(Lcom/facebook/orca/users/User;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 85
    return-void
.end method

.method public setUserKey(Lcom/facebook/orca/users/UserKey;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 75
    return-void
.end method
