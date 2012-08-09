.class public Lcom/facebook/katana/activity/events/EventGuestsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventGuestsAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->d:Ljava/util/List;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->b:Landroid/view/LayoutInflater;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 208
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 209
    if-eqz v1, :cond_0

    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;->a:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v1

    .line 107
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v5, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    new-instance v6, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    invoke-direct {v6, v3, v0, v1}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;-><init>(Ljava/lang/String;Lcom/facebook/katana/model/FacebookUser;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/events/EventGuestsAdapter$byStatusAndName;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$byStatusAndName;-><init>(Lcom/facebook/katana/activity/events/EventGuestsAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 198
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f02018e

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    .line 131
    if-nez p2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 133
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f0800b5

    invoke-direct {v1, p2, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 135
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    :cond_0
    const v1, 0x7f0800c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->a()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->e:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    .line 152
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    .line 156
    if-eqz v2, :cond_4

    .line 157
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventGuestsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_3

    .line 160
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    :goto_1
    const v1, 0x7f0800b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventGuestsAdapter$Item;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p2

    .line 149
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
