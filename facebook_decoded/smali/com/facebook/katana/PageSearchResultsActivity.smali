.class public Lcom/facebook/katana/PageSearchResultsActivity;
.super Lcom/facebook/katana/ProfileSearchResultsActivity;
.source "PageSearchResultsActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private m:Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;

.field private n:Lcom/facebook/katana/PageListAdapter;

.field private o:Lcom/facebook/katana/ui/SectionedListMultiAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/PageSearchResultsActivity;)Lcom/facebook/katana/PageListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->n:Lcom/facebook/katana/PageListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/PageSearchResultsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/katana/PageSearchResultsActivity;->q()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->j:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->k:I

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->g:Ljava/lang/String;

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->i:Ljava/lang/String;

    .line 178
    iput p2, p0, Lcom/facebook/katana/PageSearchResultsActivity;->j:I

    .line 179
    iput v1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->k:I

    .line 180
    invoke-static {p0, p1, p2, v1}, Lcom/facebook/katana/service/method/PagesSearch;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->h:Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Lcom/facebook/katana/provider/PagesProvider;->a:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;-><init>(Lcom/facebook/katana/PageSearchResultsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->m:Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;

    .line 117
    new-instance v0, Lcom/facebook/katana/PageListAdapter;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/PageListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->n:Lcom/facebook/katana/PageListAdapter;

    .line 120
    new-instance v0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    invoke-direct {v0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->o:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    .line 121
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->o:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->n:Lcom/facebook/katana/PageListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->o:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/katana/PageSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsActivity;->o:Lcom/facebook/katana/ui/SectionedListMultiAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/katana/PageSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setFastScrollEnabled(Z)V

    .line 128
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->n:Lcom/facebook/katana/PageListAdapter;

    iget-object v0, v0, Lcom/facebook/katana/PageListAdapter;->a:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 165
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Lcom/facebook/katana/ProfileSearchResultsAdapter;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/facebook/katana/PageSearchResultsAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/PageSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/PageSearchResultsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    return-object v0
.end method

.method protected final h()Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/PageSearchResultsActivity$PagesAppSessionListener;-><init>(Lcom/facebook/katana/PageSearchResultsActivity;B)V

    return-object v0
.end method

.method protected final i()V
    .locals 3

    .prologue
    .line 202
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/PageSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    const v2, 0x7f0b029b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const v0, 0x7f0b0200

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/facebook/katana/PageSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    .line 156
    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListView;->a()Lcom/facebook/katana/ui/SectionedListAdapter;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p3}, Lcom/facebook/katana/ui/SectionedListAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 158
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2, v0}, Lcom/facebook/katana/util/ApplicationUtils;->b(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, v1, v1}, Lcom/facebook/katana/PageSearchResultsActivity;->a(IZ)V

    .line 137
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->m:Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/PageListAdapter$UserPagesQuery;->a:[Ljava/lang/String;

    const-string v7, "connection_type, display_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity;->h:Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/PagesProvider;->a:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/PageSearchResultsAdapter$SearchResultsQuery;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method
