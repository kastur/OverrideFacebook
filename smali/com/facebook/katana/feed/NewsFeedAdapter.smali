.class public Lcom/facebook/katana/feed/NewsFeedAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsFeedAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryEdge;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryEdge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->b:Landroid/view/LayoutInflater;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method private a(Landroid/view/View;Landroid/content/Context;Lcom/facebook/katana/api/gql/model/FeedProfile;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Lcom/facebook/katana/feed/NewsFeedAdapter$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/facebook/katana/feed/NewsFeedAdapter$1;-><init>(Lcom/facebook/katana/feed/NewsFeedAdapter;Lcom/facebook/katana/api/gql/model/FeedProfile;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryEdge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lcom/facebook/katana/feed/NewsFeedAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 58
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;

    move-object v1, v0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedStoryEdge;

    iget-object v4, v0, Lcom/facebook/katana/api/gql/model/FeedStoryEdge;->story:Lcom/facebook/katana/api/gql/model/FeedStory;

    .line 93
    invoke-virtual {v4}, Lcom/facebook/katana/api/gql/model/FeedStory;->b()Lcom/facebook/katana/api/gql/model/FeedProfile;

    move-result-object v0

    .line 94
    invoke-virtual {v4}, Lcom/facebook/katana/api/gql/model/FeedStory;->c()Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;

    move-result-object v2

    .line 98
    if-eqz v0, :cond_1

    .line 99
    iget-object v5, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    .line 100
    iget-object v6, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-direct {p0, v5, v3, v0}, Lcom/facebook/katana/feed/NewsFeedAdapter;->a(Landroid/view/View;Landroid/content/Context;Lcom/facebook/katana/api/gql/model/FeedProfile;)V

    .line 104
    iget-object v5, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->a:Lcom/facebook/orca/images/UrlImage;

    iget-object v6, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;

    iget-object v6, v6, Lcom/facebook/katana/api/gql/model/FeedImage;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 107
    iget-object v5, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-direct {p0, v5, v3, v0}, Lcom/facebook/katana/feed/NewsFeedAdapter;->a(Landroid/view/View;Landroid/content/Context;Lcom/facebook/katana/api/gql/model/FeedProfile;)V

    .line 111
    :cond_0
    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->title:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->title:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    iget-object v5, v5, Lcom/facebook/katana/api/gql/model/FeedStoryText;->text:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_1
    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->message:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->message:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    iget-object v5, v5, Lcom/facebook/katana/api/gql/model/FeedStoryText;->text:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_2
    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->media:Lcom/facebook/katana/api/gql/model/FeedMedia;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->media:Lcom/facebook/katana/api/gql/model/FeedMedia;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedMedia;->image:Lcom/facebook/katana/api/gql/model/FeedImage;

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->i:Lcom/facebook/orca/images/UrlImage;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 130
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->i:Lcom/facebook/orca/images/UrlImage;

    iget-object v2, v2, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->media:Lcom/facebook/katana/api/gql/model/FeedMedia;

    iget-object v2, v2, Lcom/facebook/katana/api/gql/model/FeedMedia;->image:Lcom/facebook/katana/api/gql/model/FeedImage;

    iget-object v2, v2, Lcom/facebook/katana/api/gql/model/FeedImage;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 139
    :cond_1
    :goto_3
    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    .line 141
    :goto_4
    const/4 v0, 0x0

    .line 142
    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 143
    const v5, 0x7f0b0413

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2
    :goto_5
    if-lez v2, :cond_a

    .line 159
    iget-object v2, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-wide v5, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->creationTime:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v0, v2, v5, v6}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v2, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->implicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const v2, 0x7f0b04ad

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v4, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->implicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;

    iget-object v4, v4, Lcom/facebook/katana/api/gql/model/FeedPlace;->name:Ljava/lang/String;

    aput-object v4, v5, v6

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_7
    return-object p2

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;-><init>(B)V

    .line 68
    const v0, 0x7f0800e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->a:Lcom/facebook/orca/images/UrlImage;

    .line 70
    const v0, 0x7f0800e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0800e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0800eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->e:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0800e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->f:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0800e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->d:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0800ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->g:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0800ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->h:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0800ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->i:Lcom/facebook/orca/images/UrlImage;

    .line 85
    const v0, 0x7f0800e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->j:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :cond_4
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 123
    :cond_5
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 133
    :cond_6
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->i:Lcom/facebook/orca/images/UrlImage;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    goto/16 :goto_3

    .line 139
    :cond_7
    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto/16 :goto_4

    .line 146
    :cond_8
    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 147
    const v5, 0x7f0b0414

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 150
    :cond_9
    const/4 v5, 0x2

    if-le v2, v5, :cond_2

    .line 151
    const v5, 0x7f0b0415

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v4, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    aput-object v0, v6, v7

    const/4 v0, 0x1

    add-int/lit8 v7, v2, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 162
    :cond_a
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 177
    :cond_b
    iget-object v0, v1, Lcom/facebook/katana/feed/NewsFeedAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method
