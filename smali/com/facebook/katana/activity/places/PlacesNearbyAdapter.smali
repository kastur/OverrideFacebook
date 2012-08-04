.class public Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlacesNearbyAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/activity/places/PlacesNearbyActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->e:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->f:Z

    .line 44
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->c:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    .line 45
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->c:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->g:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method protected static a(Landroid/widget/ListView;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v1, p1, v0

    .line 284
    const-string v2, "place index does not include headers"

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Z)V

    .line 285
    return v1

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/widget/ListView;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p1, v0

    .line 294
    const-string v2, "list index includes headers"

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Z)V

    .line 295
    return v1

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->e:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    .line 241
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method

.method public final a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->d:Z

    if-eq p1, v0, :cond_0

    .line 250
    iput-boolean p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->d:Z

    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->f:Z

    if-eq p1, v0, :cond_0

    .line 271
    iput-boolean p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->f:Z

    .line 272
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 78
    const-wide/16 v0, -0x1

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f090070

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 99
    move-object v0, p3

    .line 101
    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(Landroid/widget/ListView;I)I

    move-result v4

    .line 102
    const-string v2, "index is a list index"

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->d:Z

    if-eqz v0, :cond_2

    .line 107
    if-nez p2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f030001

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$AddPlaceViewHolder;

    invoke-direct {v2, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$AddPlaceViewHolder;-><init>(B)V

    .line 111
    const v0, 0x7f080031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$AddPlaceViewHolder;->a:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 117
    :goto_1
    iget-object v0, v0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$AddPlaceViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_2
    return-object p2

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$AddPlaceViewHolder;

    goto :goto_1

    .line 122
    :cond_2
    if-nez p2, :cond_4

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f0300db

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 125
    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;

    invoke-direct {v2, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;-><init>(B)V

    .line 126
    const v0, 0x7f080290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    .line 127
    const v0, 0x7f080291

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->b:Lcom/facebook/orca/images/UrlImage;

    .line 128
    const v0, 0x7f080288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->c:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f080292

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->d:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f080293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->e:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_3
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 139
    iget-object v5, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    iget-boolean v5, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->f:Z

    if-eqz v5, :cond_6

    .line 141
    iget-object v5, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->c:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v5, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g(I)Z

    move-result v5

    .line 143
    iget-object v6, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->b:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v6, v8}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 144
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v6

    if-nez v6, :cond_5

    .line 145
    if-eqz v5, :cond_3

    move v3, v1

    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    new-instance v5, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;

    invoke-direct {v5, p0, p3, v4, p2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;Landroid/view/ViewGroup;ILandroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    :goto_4
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, v0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 177
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :goto_5
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->c()Lcom/facebook/katana/model/FacebookDeal;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 190
    iget-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 133
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;

    move-object v2, v0

    goto :goto_3

    .line 157
    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 159
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 162
    :cond_6
    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 163
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->b:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 166
    iget-object v3, v0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 167
    sget-object v3, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "null image URL for place "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->b:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v3, v7}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    goto :goto_4

    .line 170
    :cond_7
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->b:Lcom/facebook/orca/images/UrlImage;

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    goto :goto_4

    .line 179
    :cond_8
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 181
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->c:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    sget-object v5, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->EVENTS_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookEvent;->e()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 185
    :cond_9
    iget-object v3, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->d:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 192
    :cond_a
    iget-object v0, v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$PlaceViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
