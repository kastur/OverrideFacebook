.class public Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;
.super Lcom/facebook/katana/activity/media/BasePhotosetAdapter;
.source "PhotoSetGridAdapter.java"


# instance fields
.field private final a:Lcom/facebook/katana/binding/AppSession;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/widget/AbsListView;

.field private e:Lcom/facebook/katana/util/BitmapCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Landroid/widget/AbsListView;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->b:Ljava/util/Set;

    .line 37
    new-instance v0, Lcom/facebook/katana/util/BitmapCache;

    invoke-direct {v0}, Lcom/facebook/katana/util/BitmapCache;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->e:Lcom/facebook/katana/util/BitmapCache;

    .line 42
    iput-object p2, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a:Lcom/facebook/katana/binding/AppSession;

    .line 43
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->c:Landroid/view/LayoutInflater;

    .line 44
    iput-object p3, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->d:Landroid/widget/AbsListView;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private a(JLandroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->d:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->d:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v2, v0, v1

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->d:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;

    .line 210
    iget-wide v3, v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->a:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 211
    iget-object v1, v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->b:Z

    .line 216
    :cond_0
    return-void

    .line 204
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;JLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->b(J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->b:Ljava/util/Set;

    return-object v0
.end method

.method private b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Lcom/facebook/katana/util/BitmapCache;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->e:Lcom/facebook/katana/util/BitmapCache;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, p1

    .line 91
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;-><init>(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadBitmap;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadBitmap;-><init>(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadBitmap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 50
    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;-><init>(B)V

    .line 55
    const v0, 0x7f0801fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->e:Lcom/facebook/katana/util/BitmapCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/katana/util/BitmapCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    if-nez v0, :cond_2

    .line 65
    iput-boolean v5, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->b:Z

    .line 66
    iget-object v0, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    const v4, 0x7f020230

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :cond_0
    :goto_1
    iput-wide v2, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->a:J

    .line 72
    return-object p2

    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 67
    :cond_2
    iget-wide v4, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->a:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->b:Z

    if-nez v4, :cond_0

    .line 68
    :cond_3
    iget-object v4, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->b:Z

    goto :goto_1
.end method
