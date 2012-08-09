.class public abstract Lcom/facebook/katana/ProfileSearchResultsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "ProfileSearchResultsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/UsersTabProgressSource;


# instance fields
.field protected e:Lcom/facebook/katana/binding/AppSession;

.field protected f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:I

.field private m:Lcom/facebook/katana/binding/AppSessionListener;

.field private n:I

.field private o:Lcom/facebook/katana/TabProgressListener;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method protected final a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0800b0

    const v4, 0x7f0800af

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 189
    if-eqz p2, :cond_1

    .line 190
    iget v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    .line 195
    :goto_0
    iget v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 197
    :goto_1
    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p0, v4}, Lcom/facebook/katana/ProfileSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {p0, v5}, Lcom/facebook/katana/ProfileSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_2
    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->o:Lcom/facebook/katana/TabProgressListener;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->o:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 207
    :cond_0
    return-void

    .line 192
    :cond_1
    iget v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 195
    goto :goto_1

    .line 201
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/katana/ProfileSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v5}, Lcom/facebook/katana/ProfileSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->setContentView(I)V

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 103
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->g()Lcom/facebook/katana/ProfileSearchResultsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 108
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->i()V

    .line 111
    new-instance v0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;-><init>(Lcom/facebook/katana/ProfileSearchResultsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->h:Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;

    .line 114
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->h()Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    .line 117
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    return-void
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->o:Lcom/facebook/katana/TabProgressListener;

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->o:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->o:Lcom/facebook/katana/TabProgressListener;

    iget v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->n:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 179
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->p:Ljava/lang/String;

    .line 166
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(IZ)V

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->p:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract g()Lcom/facebook/katana/ProfileSearchResultsAdapter;
.end method

.method protected abstract h()Lcom/facebook/katana/ProfileSearchResultsActivity$ProfileSearchAppSessionListener;
.end method

.method protected abstract i()V
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 125
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 127
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 128
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 147
    if-lez v0, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(IZ)V

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->p:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity;->g:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method
