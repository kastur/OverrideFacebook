.class public Lcom/facebook/katana/feed/NewsFeedFragment;
.super Lcom/facebook/katana/fragment/BaseFacebookFragment;
.source "NewsFeedFragment.java"


# static fields
.field private static final J:Ljava/lang/String;


# instance fields
.field private K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

.field private L:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

.field private M:Lcom/facebook/katana/feed/NewsFeedAdapter;

.field private N:Lcom/facebook/katana/binding/AppSession;

.field private O:Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;

.field private P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/katana/feed/NewsFeedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/feed/NewsFeedFragment;->J:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;-><init>()V

    .line 35
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    const v0, 0x7f0802bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/facebook/katana/feed/NewsFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/feed/NewsFeedFragment$1;-><init>(Lcom/facebook/katana/feed/NewsFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/facebook/katana/feed/NewsFeedFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v2, v2, v1}, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    const v1, 0x7f0802bd

    const v2, 0x7f0b02ff

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Landroid/view/View;II)V

    .line 146
    const v1, 0x7f0802bb

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Landroid/view/View;I)V

    .line 147
    const v1, 0x7f0802c0

    const v2, 0x7f0b02b7

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Landroid/view/View;II)V

    .line 149
    const v1, 0x7f0802be

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/feed/NewsFeedFragment;->b(Landroid/view/View;I)V

    .line 150
    const v1, 0x7f0802c3

    const v2, 0x7f0b03de

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Landroid/view/View;II)V

    .line 152
    const v1, 0x7f0802c1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/feed/NewsFeedFragment;->c(Landroid/view/View;I)V

    .line 153
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    const v0, 0x7f0802be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/facebook/katana/feed/NewsFeedFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/feed/NewsFeedFragment$2;-><init>(Lcom/facebook/katana/feed/NewsFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method private static c(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 194
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 195
    const v0, 0x7f0800af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b04a9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    const v0, 0x7f0800b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    const v0, 0x7f0802c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/facebook/katana/feed/NewsFeedFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/feed/NewsFeedFragment$3;-><init>(Lcom/facebook/katana/feed/NewsFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    const v0, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->L:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->L:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->setEmptyView(Landroid/view/View;)V

    .line 73
    new-instance v0, Lcom/facebook/katana/feed/NewsFeedAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/feed/NewsFeedFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/facebook/katana/feed/NewsFeedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->M:Lcom/facebook/katana/feed/NewsFeedAdapter;

    .line 74
    iget-object v3, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->M:Lcom/facebook/katana/feed/NewsFeedAdapter;

    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/facebook/katana/feed/NewsFeedAdapter;->a(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->L:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    iget-object v1, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->M:Lcom/facebook/katana/feed/NewsFeedAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-static {v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->c(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->b(Landroid/view/View;)V

    .line 79
    return-object v2

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedHomeStories;->feedStoryEdges:Ljava/util/List;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, v0}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/katana/feed/NewsFeedFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->N:Lcom/facebook/katana/binding/AppSession;

    .line 52
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->N:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;-><init>(Lcom/facebook/katana/feed/NewsFeedFragment;B)V

    iput-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->O:Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;

    .line 54
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->N:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->O:Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 57
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/feed/NewsFeedFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final a(Lcom/facebook/katana/api/gql/model/FeedHomeStories;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    .line 136
    iget-object v1, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->M:Lcom/facebook/katana/feed/NewsFeedAdapter;

    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/katana/feed/NewsFeedAdapter;->a(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 139
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->P:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedHomeStories;->feedStoryEdges:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/facebook/katana/feed/NewsFeedFragment;->J:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in fetching news feed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->K:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 131
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->c(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/feed/NewsFeedFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 93
    :cond_1
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->N:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->N:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/feed/NewsFeedFragment;->O:Lcom/facebook/katana/feed/NewsFeedFragment$FeedFetchListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->w()V

    .line 103
    return-void
.end method
