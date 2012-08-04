.class public Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;
.source "ProfileListDynamicAdapter.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/view/LayoutInflater;

.field protected final c:Lcom/facebook/katana/binding/ProfileImagesCache;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->b:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->f:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f02018e

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 167
    if-nez p4, :cond_0

    .line 168
    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 169
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f080081

    invoke-direct {v1, p4, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 171
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    :goto_0
    iget-wide v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 178
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 180
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a:Landroid/content/Context;

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_1

    .line 184
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    :goto_1
    const v1, 0x7f0802ab

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object p4

    .line 174
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 189
    :cond_2
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    .line 132
    if-nez p2, :cond_0

    .line 133
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-object p2
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->e:Landroid/os/AsyncTask;

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x2

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
