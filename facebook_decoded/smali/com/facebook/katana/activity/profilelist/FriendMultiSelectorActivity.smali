.class public Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.source "FriendMultiSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;


# instance fields
.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected n:Ljava/lang/String;

.field private p:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0800b0

    const v4, 0x7f0800af

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 203
    if-eqz p2, :cond_0

    .line 204
    iget v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->r:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->r:I

    .line 210
    :goto_0
    iget v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->r:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 212
    :goto_1
    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :goto_2
    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->r:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->r:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 128
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 133
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g()V

    .line 134
    const/4 v0, -0x1

    const v1, 0x7f0b01de

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(ILjava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->f:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$1;-><init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->e:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$2;-><init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 189
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    const v2, 0x7f0b01fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    const v0, 0x7f0b01fc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->a(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 60
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->q:Ljava/util/Set;

    .line 65
    new-instance v0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->q:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 71
    new-instance v0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;-><init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->p:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;

    .line 74
    new-instance v0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;-><init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 76
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->f()V

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 79
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const v0, 0x7f0b0261

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->q:Ljava/lang/String;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 108
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a(ILandroid/view/View;)V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-super {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onResume()V

    .line 87
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->e()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, v1, v1}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(IZ)V

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->p:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$FriendsQuery;->a:[Ljava/lang/String;

    const-string v5, "display_name IS NOT NULL AND LENGTH(display_name) > 0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    const-string v1, "profiles"

    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->q:Ljava/util/Set;

    invoke-static {v2}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 119
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->finish()V

    .line 121
    return-void
.end method
