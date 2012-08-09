.class public Lcom/facebook/katana/PageInfoAdapter;
.super Lcom/facebook/katana/ProfileInfoAdapter;
.source "PageInfoAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/ProfileInfoAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookPageFull;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 30
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-boolean v0, p0, Lcom/facebook/katana/PageInfoAdapter;->c:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mDisplayName:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPicBig:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFounded:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFounded:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFounded:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCompanyOverview:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCompanyOverview:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0274

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCompanyOverview:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMission:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0283

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMission:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_3
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mWebsite:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b029a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mWebsite:Ljava/lang/String;

    invoke-direct {v1, v7, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_4
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v7, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_5
    iget v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFanCount:I

    if-lez v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFanCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_6
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducts:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducts:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b028f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducts:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_7
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAttire:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAttire:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b026c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAttire:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_8
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCulinaryTeam:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCulinaryTeam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0275

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCulinaryTeam:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_9
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPriceRange:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPriceRange:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b028d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPriceRange:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_a
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mReleaseDate:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mReleaseDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0291

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mReleaseDate:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_b
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGenre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGenre:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_c
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStarring:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStarring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0295

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStarring:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_d
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mScreenplayBy:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mScreenplayBy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0293

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mScreenplayBy:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_e
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mDirectedBy:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mDirectedBy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0277

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mDirectedBy:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_f
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducedBy:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducedBy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b028e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mProducedBy:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_10
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStudio:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStudio:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0296

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mStudio:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_11
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAwards:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAwards:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b026d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mAwards:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_12
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPlotOutline:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPlotOutline:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b028b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPlotOutline:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_13
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mNetwork:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0287

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mNetwork:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_14
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSeason:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSeason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0294

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSeason:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_15
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSchedule:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSchedule:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0292

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mSchedule:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_16
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandMembers:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandMembers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b026f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandMembers:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_17
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mHomeTown:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mHomeTown:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 157
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mHomeTown:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_18
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCurrentLocation:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCurrentLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0276

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mCurrentLocation:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_19
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mRecordLabel:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mRecordLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0290

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mRecordLabel:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1a
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBookingAgent:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBookingAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0272

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBookingAgent:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1b
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPressContact:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPressContact:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b028c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPressContact:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1c
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mArtistWeLike:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mArtistWeLike:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 187
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b026b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mArtistWeLike:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1d
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mInfluences:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mInfluences:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mInfluences:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1e
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandInterests:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandInterests:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 198
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b026e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBandInterests:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1f
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBio:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBio:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_20

    .line 204
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0270

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBio:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_20
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBirthday:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    .line 209
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0271

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBirthday:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_21
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInfo:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0288

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInfo:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_22
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInterests:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInterests:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_23

    .line 221
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPersonalInterests:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_23
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMembers:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMembers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    .line 227
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0282

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMembers:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_24
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBuilt:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBuilt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    .line 232
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mBuilt:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_25
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFeatures:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFeatures:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0279

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mFeatures:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_26
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMpg:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMpg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_27

    .line 242
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0284

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mMpg:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_27
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGeneralInfo:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGeneralInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    .line 247
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookPageFull;->mGeneralInfo:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_28
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPhone:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_29

    .line 253
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/katana/PageInfoAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b028a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/facebook/katana/model/FacebookPageFull;->mPhone:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_29
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/katana/PageInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    .line 274
    iget v0, v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 276
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x3

    return v0
.end method
