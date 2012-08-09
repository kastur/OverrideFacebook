.class public Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;
.super Lcom/facebook/katana/activity/media/BasePhotosetAdapter;
.source "PhotosetGalleryAdapter.java"


# instance fields
.field private a:Lcom/facebook/katana/binding/AppSession;

.field private b:Lcustom/android/Gallery;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/katana/util/SoftReferenceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/util/SoftReferenceCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Lcustom/android/Gallery;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->e:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/facebook/katana/util/SoftReferenceCache;

    invoke-direct {v0}, Lcom/facebook/katana/util/SoftReferenceCache;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->f:Lcom/facebook/katana/util/SoftReferenceCache;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->g:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->h:Ljava/util/Set;

    .line 58
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->c:Landroid/view/LayoutInflater;

    .line 59
    iput-object p2, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a:Lcom/facebook/katana/binding/AppSession;

    .line 60
    iput-object p3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b:Lcustom/android/Gallery;

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020237

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "photoset-gallery"

    const-string v2, "Cannot decode resource photo_placeholder_dark: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->d(J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->e:Ljava/util/Map;

    return-object v0
.end method

.method private b(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->h:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->c(J)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcom/facebook/katana/util/SoftReferenceCache;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->f:Lcom/facebook/katana/util/SoftReferenceCache;

    return-object v0
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->h:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method private d(J)Z
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcustom/android/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b:Lcustom/android/Gallery;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    .line 145
    const/4 v2, -0x1

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 147
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-nez v0, :cond_1

    .line 152
    :goto_1
    if-lez v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b:Lcustom/android/Gallery;

    invoke-virtual {v0, v1}, Lcustom/android/Gallery;->setSelection(I)V

    .line 155
    :cond_0
    return-void

    .line 146
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/Long;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->f:Lcom/facebook/katana/util/SoftReferenceCache;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/util/SoftReferenceCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;

    invoke-direct {v1, v6}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;-><init>(B)V

    .line 83
    const v0, 0x7f080079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ImageViewTouchBase;

    iput-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->b:Lcom/facebook/katana/ui/ImageViewTouchBase;

    .line 84
    const v0, 0x7f08006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 92
    iget-wide v4, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->a:Z

    if-eqz v0, :cond_1

    .line 118
    :goto_1
    return-object p2

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_1
    iput-wide v2, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->c:J

    .line 99
    iput-boolean v6, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->a:Z

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->f:Lcom/facebook/katana/util/SoftReferenceCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/katana/util/SoftReferenceCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 102
    if-eqz v0, :cond_3

    .line 103
    iget-object v4, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->b:Lcom/facebook/katana/ui/ImageViewTouchBase;

    new-instance v5, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v5, v0, v6}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->g:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iput-boolean v7, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->a:Z

    .line 107
    iget-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(J)V

    goto :goto_1

    .line 112
    :cond_3
    iget-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->b:Lcom/facebook/katana/ui/ImageViewTouchBase;

    new-instance v4, Lcom/facebook/katana/RotateBitmap;

    iget-object v5, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->d:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v7}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageBitmapResetBaseNoScale(Lcom/facebook/katana/RotateBitmap;Z)V

    .line 114
    iget-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(J)V

    goto :goto_1
.end method
