.class public Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaPickerGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/AdapterView;

.field private final b:Landroid/view/LayoutInflater;

.field private volatile c:I

.field private volatile d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 30
    iput v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c:I

    .line 31
    iput v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->d:I

    .line 37
    iput-object p2, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a:Landroid/widget/AdapterView;

    .line 39
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->b:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method private static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 81
    if-gtz p0, :cond_0

    .line 84
    const/16 v0, 0x12c

    .line 86
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->d:I

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/katana/model/MediaItem;->a:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->sort(Ljava/util/Comparator;)V

    .line 77
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)Landroid/widget/AdapterView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a:Landroid/widget/AdapterView;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->setNotifyOnChange(Z)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 68
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a()V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300d5

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    iget v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->d:I

    if-nez v1, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c:I

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->d:I

    .line 60
    :cond_2
    new-instance v1, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p3, v2, v0

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-object p2
.end method
