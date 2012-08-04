.class public Lcom/facebook/katana/activity/places/PlacesInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlacesInfoAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a:Landroid/content/Context;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    .line 88
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget v1, v0, Lcom/facebook/katana/model/FacebookPage;->mFanCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/facebook/katana/model/FacebookPage;->mFanCount:I

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    iget v5, v0, Lcom/facebook/katana/model/FacebookPage;->mFanCount:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/facebook/katana/model/FacebookPage;->mFanCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3, v10}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget v1, p1, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0006

    iget v5, p1, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p1, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3, v10}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPage;->mLocation:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 126
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPage;->mLocation:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b02d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3, v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;

    .line 180
    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a(Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 182
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f030051

    const/4 v2, 0x0

    const v6, 0x7f08012b

    const v5, 0x7f08012a

    const/16 v4, 0x8

    .line 193
    .line 194
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;

    .line 196
    if-nez p2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesInfoAdapter;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 199
    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a(Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move-object v1, v2

    :goto_0
    move-object p2, v1

    .line 213
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a(Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 246
    :goto_2
    return-object p2

    .line 201
    :pswitch_0
    invoke-virtual {v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object p2, v1

    .line 202
    goto :goto_1

    .line 205
    :pswitch_1
    invoke-virtual {v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 219
    :cond_1
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 226
    :cond_2
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 232
    :pswitch_3
    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 240
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 243
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x2

    return v0
.end method
