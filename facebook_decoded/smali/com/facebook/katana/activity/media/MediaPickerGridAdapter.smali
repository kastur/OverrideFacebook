.class public Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaPickerGridAdapter.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;
.implements Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;
.implements Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/model/MediaItem;",
        ">;",
        "Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;",
        "Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;",
        "Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;

.field private final b:I

.field private final c:Landroid/view/LayoutInflater;

.field private d:Lcom/facebook/katana/activity/media/JpegCache;

.field private e:Landroid/widget/AdapterView;

.field private f:Lcom/facebook/katana/activity/media/SelectionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance v0, Lcom/facebook/katana/activity/media/JpegCache;

    const/high16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/facebook/katana/activity/media/JpegCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->d:Lcom/facebook/katana/activity/media/JpegCache;

    .line 49
    iput-object p2, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->e:Landroid/widget/AdapterView;

    .line 51
    const/high16 v0, 0x42c8

    invoke-static {p1, v0}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->b:I

    .line 52
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->c:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->b:I

    return v0
.end method

.method private a(J)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->e:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v3, v0, v1

    .line 130
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-gt v2, v3, :cond_1

    .line 131
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->e:Landroid/widget/AdapterView;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/vault/GridItemController;

    .line 136
    invoke-virtual {v0}, Lcom/facebook/katana/view/vault/GridItemController;->a()Lcom/facebook/katana/model/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/view/vault/GridItemController;->a()Lcom/facebook/katana/model/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move-object v0, v1

    .line 140
    :goto_1
    return-object v0

    .line 130
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/facebook/katana/view/vault/GridItemController;

    invoke-direct {v1, v0}, Lcom/facebook/katana/view/vault/GridItemController;-><init>(Landroid/view/View;)V

    .line 89
    invoke-virtual {v1, p0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Lcom/facebook/katana/view/vault/GridItemController$SelectionListener;)V

    .line 90
    invoke-virtual {v1, p0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Lcom/facebook/katana/view/vault/GridItemController$OnClickListener;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;J)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/facebook/katana/model/MediaItem;->a:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->sort(Ljava/util/Comparator;)V

    .line 124
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)Lcom/facebook/katana/activity/media/JpegCache;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->d:Lcom/facebook/katana/activity/media/JpegCache;

    return-object v0
.end method


# virtual methods
.method public final a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(J)Landroid/view/View;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/vault/GridItemController;

    .line 174
    invoke-virtual {v0, p3}, Lcom/facebook/katana/view/vault/GridItemController;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;

    .line 156
    return-void
.end method

.method public final a(Lcom/facebook/katana/activity/media/SelectionState;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/media/SelectionState;->b(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    .line 118
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V

    .line 119
    return-void
.end method

.method public final a(Lcom/facebook/katana/view/vault/GridItemController;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;

    invoke-virtual {p1}, Lcom/facebook/katana/view/vault/GridItemController;->a()Lcom/facebook/katana/model/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/view/vault/GridItemController;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {p1}, Lcom/facebook/katana/view/vault/GridItemController;->a()Lcom/facebook/katana/model/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {p1}, Lcom/facebook/katana/view/vault/GridItemController;->a()Lcom/facebook/katana/model/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->b(Lcom/facebook/katana/model/MediaItem;)V

    goto :goto_0
.end method

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
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->setNotifyOnChange(Z)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 106
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 58
    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-direct {p0, p3}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/view/vault/GridItemController;

    .line 65
    invoke-virtual {v1, v0}, Lcom/facebook/katana/view/vault/GridItemController;->b(Lcom/facebook/katana/model/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :goto_0
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {v1, v0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 71
    iget-object v2, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->d:Lcom/facebook/katana/activity/media/JpegCache;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/media/JpegCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 73
    if-eqz v2, :cond_2

    array-length v3, v2

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v1, v2}, Lcom/facebook/katana/view/vault/GridItemController;->a(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->f:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/media/SelectionState;->c(Lcom/facebook/katana/model/MediaItem;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Z)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v2, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;

    invoke-direct {v2, p0, v4}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;B)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
