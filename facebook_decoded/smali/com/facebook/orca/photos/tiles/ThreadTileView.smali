.class public Lcom/facebook/orca/photos/tiles/ThreadTileView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadTileView.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private g:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private h:Landroid/graphics/drawable/ColorDrawable;

.field private i:Lcom/facebook/orca/threads/ThreadSummary;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/UrlImage;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 192
    iput v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 194
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_1

    .line 251
    :goto_1
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 202
    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 203
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-static {v3}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iput v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    goto :goto_1

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-static {v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v1

    .line 218
    if-ne v1, v5, :cond_4

    .line 219
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 220
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 222
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iput v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    goto :goto_1

    .line 227
    :cond_4
    if-ne v1, v4, :cond_5

    .line 228
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 232
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iput v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    goto/16 :goto_1

    .line 240
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_6

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 244
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iput v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    goto/16 :goto_1

    .line 250
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xff

    const/4 v3, 0x4

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 78
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a:Lcom/facebook/orca/cache/DataCache;

    .line 79
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 80
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 81
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 82
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 83
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 84
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/R$styleable;->ThreadTileView:[I

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    .line 88
    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    if-ne v2, v5, :cond_0

    .line 89
    const/16 v2, 0x32

    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setBackgroundColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->h:Landroid/graphics/drawable/ColorDrawable;

    .line 96
    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    .line 97
    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    move v0, v1

    .line 98
    :goto_0
    if-ge v0, v3, :cond_1

    .line 99
    new-instance v1, Lcom/facebook/orca/images/UrlImage;

    invoke-direct {v1, p1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->addView(Landroid/view/View;)V

    .line 102
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/images/UrlImage;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    .line 255
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 256
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 259
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v0, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 262
    add-int v2, v4, v3

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v1, v2, v7, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 265
    add-int/2addr v4, v3

    add-int/2addr v3, v5

    iget v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 272
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, p1, v3, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 275
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 279
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, v0, v3, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 280
    invoke-virtual {v0, v7}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 285
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 289
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 303
    :goto_0
    invoke-virtual {v0, v7}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 304
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    .line 305
    return-void

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 301
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 318
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 167
    const-string v1, "ThreadTileView.onLayout"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 168
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingLeft()I

    move-result v1

    .line 169
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getRight()I

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getLeft()I

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingRight()I

    .line 171
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingTop()I

    move-result v2

    .line 172
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getBottom()I

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getTop()I

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingBottom()I

    .line 174
    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 176
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 177
    invoke-virtual {v0}, Lcom/facebook/orca/images/UrlImage;->getMeasuredWidth()I

    move-result v4

    .line 178
    invoke-virtual {v0}, Lcom/facebook/orca/images/UrlImage;->getMeasuredHeight()I

    move-result v5

    .line 179
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 187
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 188
    return-void

    .line 180
    :cond_1
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_2
    move v2, v0

    .line 181
    :goto_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    if-ge v2, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/orca/images/UrlImage;

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 184
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 181
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 131
    const-string v0, "ThreadTileView.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x0

    .line 141
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/images/UrlImage;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 144
    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImage;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImage;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 159
    invoke-static {v0, p1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setMeasuredDimension(II)V

    .line 162
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 163
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 147
    :cond_1
    :goto_1
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:I

    if-ge v3, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 149
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/images/UrlImage;->measure(II)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    move v1, v7

    goto :goto_0
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadSummary;

    .line 113
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a()V

    .line 114
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->requestLayout()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->invalidate()V

    .line 116
    return-void
.end method

.method public setTileSizePx(I)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:I

    .line 125
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a()V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->requestLayout()V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->invalidate()V

    .line 128
    return-void
.end method
