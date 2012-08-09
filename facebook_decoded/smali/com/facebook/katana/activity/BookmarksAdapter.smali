.class public Lcom/facebook/katana/activity/BookmarksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarksAdapter.java"


# static fields
.field public static a:F

.field public static b:I

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/graphics/Bitmap;


# instance fields
.field public final c:I

.field private final f:Landroid/content/Context;

.field private final g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/model/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/ListView;

.field private p:I

.field private final q:I

.field private final r:I

.field private s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private u:I

.field private final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/high16 v0, 0x425c

    sput v0, Lcom/facebook/katana/activity/BookmarksAdapter;->a:F

    .line 79
    const/16 v0, 0x8c

    sput v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    .line 82
    new-instance v0, Lcom/facebook/katana/activity/BookmarksAdapter$1;

    invoke-direct {v0}, Lcom/facebook/katana/activity/BookmarksAdapter$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/BookmarksAdapter;->d:Ljava/util/Map;

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/binding/AppSession;Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->u:I

    .line 135
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    .line 137
    iput-object p5, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->i:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 149
    iput-object p4, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    .line 150
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;-><init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;-><init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->v:Ljava/lang/String;

    .line 157
    invoke-static {p1, v3}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->c:I

    .line 159
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->q:I

    .line 161
    invoke-static {p1, v3}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->r:I

    .line 163
    iput-object p6, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->t:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BookmarksAdapter;->c()V

    .line 165
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "BookmarksAdapter"

    const-string v2, "cannot decode resource"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const-string v1, "BookmarksAdapter"

    const-string v2, "Cannot decode resource photo_downloading: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/katana/model/Bookmark;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 591
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/facebook/katana/model/Bookmark;->icon:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 628
    :goto_0
    return v0

    .line 595
    :cond_1
    iget-object v0, p1, Lcom/facebook/katana/model/Bookmark;->icon:Ljava/lang/String;

    .line 598
    const-string v2, "app"

    iget-object v3, p1, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/images/im_online.gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    const v0, 0x7f02009e

    goto :goto_0

    .line 602
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/images/icons/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 604
    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    sget-object v2, Lcom/facebook/katana/activity/BookmarksAdapter;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    sget-object v1, Lcom/facebook/katana/activity/BookmarksAdapter;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 613
    :cond_5
    const-string v2, "group"

    iget-object v3, p1, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "group-types/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 614
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 616
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 617
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group_types_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 628
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 392
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->r:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 393
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->q:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 394
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->q:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 396
    const/4 v1, 0x6

    const v2, 0x7f08004b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/BookmarksAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/BookmarksAdapter;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/BookmarksAdapter;)Lcom/facebook/katana/activity/FacebookActivityDelegate;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/BookmarksAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 176
    if-eqz p0, :cond_1

    .line 177
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-object v0

    .line 181
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 516
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->p:I

    .line 519
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 520
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v2, v0

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 521
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v0, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 522
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 523
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 524
    new-instance v0, Lcom/facebook/katana/activity/BookmarksAdapter$3;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/BookmarksAdapter$3;-><init>(Lcom/facebook/katana/activity/BookmarksAdapter;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 533
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d(Z)V

    .line 534
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 535
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/BookmarksAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->p:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->k:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0b017b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b017c

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0b0472

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0b0209

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 408
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/facebook/katana/activity/BookmarksAdapter$2;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/BookmarksAdapter$2;-><init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 435
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->i:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 380
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 640
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 641
    if-nez v0, :cond_3

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v0

    .line 645
    :goto_0
    const-string v0, "from_navbar"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    const/4 v0, 0x0

    .line 647
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 648
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 649
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 651
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "from_navbar"

    aput-object v4, v3, v5

    const-string v4, "extra_launch_uri"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/util/IntentUtils;->a(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0, v6}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Z)V

    .line 669
    :cond_0
    :goto_1
    return-void

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 660
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 661
    if-eqz v0, :cond_2

    .line 662
    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 666
    :cond_2
    instance-of v0, v0, Lcom/facebook/katana/activity/FacebookActivity;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    if-nez p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->i:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 233
    :goto_1
    return v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->j:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 221
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 222
    if-lt v1, v2, :cond_0

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v1, v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    .line 227
    iget-object v0, v0, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->u:I

    return v0
.end method

.method public final c()V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->j:Ljava/util/Map;

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->k:Ljava/util/Map;

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->h:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->l:Ljava/util/Map;

    .line 451
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/service/method/BookmarksGet;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 452
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 453
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    instance-of v0, v0, Lcom/facebook/orca/activity/FbActivityish;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/model/Bookmark;->i(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/model/Bookmark;->h(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    new-instance v1, Lcom/facebook/katana/model/BookmarksGroup;

    const-string v5, "account-and-help"

    const-string v6, ""

    invoke-direct {v1, v5, v6, v3, v3}, Lcom/facebook/katana/model/BookmarksGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->u:I

    .line 463
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v4

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    .line 466
    iget-object v5, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    iget-object v6, v0, Lcom/facebook/katana/model/BookmarksGroup;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->b()Ljava/util/List;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v4

    move v6, v1

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/Bookmark;

    .line 470
    const-string v10, "fb://account_action_sheet"

    iget-object v11, v1, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    iget-object v11, v1, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/facebook/katana/IntentUriHandler;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 474
    :cond_3
    if-ne v5, v4, :cond_5

    iget-object v10, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 475
    if-nez v3, :cond_4

    .line 476
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->l:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v6, v6, 0x1

    move v5, v2

    :cond_4
    move v3, v2

    .line 483
    :cond_5
    iget-object v10, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->j:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v10, v1, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    const-string v11, "fb://profile/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 485
    iget-object v10, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :goto_4
    if-eqz v7, :cond_6

    iget-object v1, v1, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 491
    iput v6, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->u:I

    .line 493
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v1, v5

    move v5, v3

    move v3, v6

    :goto_5
    move v6, v3

    move v3, v5

    move v5, v1

    goto/16 :goto_3

    .line 467
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->c()Ljava/util/List;

    move-result-object v5

    goto/16 :goto_2

    .line 487
    :cond_8
    iget-object v10, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 497
    :cond_9
    if-nez v5, :cond_b

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 498
    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 500
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->k:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    add-int/lit8 v6, v6, 0x1

    move v0, v6

    :goto_6
    move v1, v0

    .line 505
    goto/16 :goto_1

    .line 506
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BookmarksAdapter;->notifyDataSetChanged()V

    .line 507
    return-void

    :cond_b
    move v0, v6

    goto :goto_6

    :cond_c
    move v1, v5

    move v5, v3

    move v3, v6

    goto :goto_5

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 546
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v2, v0

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 547
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v3, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 548
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 549
    sget v0, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 550
    new-instance v0, Lcom/facebook/katana/activity/BookmarksAdapter$4;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/BookmarksAdapter$4;-><init>(Lcom/facebook/katana/activity/BookmarksAdapter;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 561
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->g:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Z)V

    .line 562
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 563
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 579
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f08004b

    const v5, 0x7f080048

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 241
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 243
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/BookmarksAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object p2, v1

    .line 369
    :goto_0
    return-object p2

    .line 245
    :pswitch_0
    if-nez p2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 247
    const v3, 0x7f03000d

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 248
    new-instance v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    invoke-direct {v3, v6}, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;-><init>(B)V

    .line 249
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    .line 250
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->d:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->e:Landroid/view/View;

    .line 253
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v3

    .line 259
    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/model/Bookmark;)I

    move-result v2

    .line 262
    if-lez v2, :cond_3

    .line 263
    iget-object v3, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    :cond_0
    :goto_2
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/facebook/katana/model/Bookmark;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-wide v2, v0, Lcom/facebook/katana/model/Bookmark;->count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 278
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-wide v3, v0, Lcom/facebook/katana/model/Bookmark;->count:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :goto_3
    if-eqz p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 286
    :cond_1
    iget-object v0, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_2
    check-cast p2, Landroid/widget/LinearLayout;

    .line 256
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    goto :goto_1

    .line 265
    :cond_3
    iget-object v2, v0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->i:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_4

    .line 268
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 270
    :cond_4
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v2, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget-object v3, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 281
    :cond_5
    iget-object v0, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 290
    :cond_6
    iget-object v0, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 294
    :pswitch_1
    if-nez p2, :cond_7

    .line 295
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 296
    const v2, 0x7f03000d

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 298
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 299
    const v2, 0x7f02024a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 302
    const v2, 0x7f0b0447

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    move-object p2, v0

    .line 303
    goto/16 :goto_0

    .line 304
    :cond_7
    check-cast p2, Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 308
    :pswitch_2
    if-nez p2, :cond_8

    .line 309
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    const v2, 0x7f03000c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 311
    new-instance v2, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    invoke-direct {v2, v6}, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;-><init>(B)V

    .line 312
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v0, v2

    .line 318
    :goto_4
    iget-object v1, v0, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    iget-object v0, v0, Lcom/facebook/katana/model/BookmarksGroup;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    if-ne p1, v4, :cond_9

    .line 322
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 315
    :cond_8
    check-cast p2, Landroid/widget/LinearLayout;

    .line 316
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    goto :goto_4

    .line 324
    :cond_9
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 326
    invoke-virtual {p2, v6, v0, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 330
    :pswitch_3
    if-nez p2, :cond_a

    .line 331
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 332
    const v3, 0x7f03000e

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 333
    new-instance v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    invoke-direct {v3, v6}, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;-><init>(B)V

    .line 334
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    .line 335
    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    .line 337
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 338
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v3

    .line 343
    :goto_5
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 344
    iget-object v2, v0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    .line 345
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->i:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 346
    if-eqz v3, :cond_b

    .line 347
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    :goto_6
    iget-object v1, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 340
    :cond_a
    check-cast p2, Landroid/widget/LinearLayout;

    .line 341
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;

    goto :goto_5

    .line 349
    :cond_b
    const-string v3, "/images/icons/friend_guy.png"

    iget-object v4, v0, Lcom/facebook/katana/model/Bookmark;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 350
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 352
    :cond_c
    iput-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->s:Ljava/lang/String;

    .line 353
    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :try_start_0
    iget-object v2, v1, Lcom/facebook/katana/activity/BookmarksAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->f:Landroid/content/Context;

    sget-object v4, Lcom/facebook/katana/activity/BookmarksAdapter;->e:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/facebook/katana/activity/BookmarksAdapter;->c:I

    invoke-static {v3, v4, v5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 357
    :catch_0
    move-exception v2

    .line 358
    const-string v3, "BookmarksAdapter"

    const-string v4, "cannot create rounded corner bitmap"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    const-string v3, "BookmarksAdapter"

    const-string v4, "Cannot create rounded corner bitmap: OOM"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x4

    return v0
.end method
