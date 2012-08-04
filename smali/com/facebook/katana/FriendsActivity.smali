.class public Lcom/facebook/katana/FriendsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "FriendsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/UsersTabProgressSource;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field protected e:Ljava/lang/String;

.field private g:Lcom/facebook/katana/binding/AppSession;

.field private h:Lcom/facebook/katana/binding/AppSessionListener;

.field private i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

.field private j:Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;

.field private k:Ljava/lang/String;

.field private m:I

.field private n:Lcom/facebook/katana/TabProgressListener;

.field private o:Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/FriendsActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 533
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 389
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->p:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->q:I

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    .line 395
    iput p2, p0, Lcom/facebook/katana/FriendsActivity;->p:I

    .line 396
    iput v1, p0, Lcom/facebook/katana/FriendsActivity;->q:I

    .line 397
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/FriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->p()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/FriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->q()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/FriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->q()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 405
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 407
    const v2, 0x7f0b01fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 408
    const v0, 0x7f0b01fc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 409
    return-void
.end method


# virtual methods
.method protected final a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0800b0

    const v4, 0x7f0800af

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 419
    if-eqz p2, :cond_1

    .line 420
    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    .line 426
    :goto_0
    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 428
    :goto_1
    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p0, v4}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-virtual {p0, v5}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_2
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->n:Lcom/facebook/katana/TabProgressListener;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->n:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 438
    :cond_0
    return-void

    .line 422
    :cond_1
    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 426
    goto :goto_1

    .line 432
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {p0, v5}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 222
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FriendsActivity;->setContentView(I)V

    .line 225
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 228
    if-eqz p1, :cond_0

    .line 229
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    .line 236
    :goto_0
    new-instance v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v3

    invoke-direct {v0, p0, p0, v3, v2}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;-><init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    .line 238
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 242
    invoke-direct {p0}, Lcom/facebook/katana/FriendsActivity;->g()V

    .line 245
    new-instance v0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;-><init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->j:Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;

    .line 246
    new-instance v0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;-><init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->o:Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;

    .line 249
    new-instance v0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/FriendsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 252
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->o:Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    return-void

    .line 232
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity;->n:Lcom/facebook/katana/TabProgressListener;

    .line 326
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->n:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->n:Lcom/facebook/katana/TabProgressListener;

    iget v0, p0, Lcom/facebook/katana/FriendsActivity;->m:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 330
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->h:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a(Z)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/SectionedListView;->setFastScrollEnabled(Z)V

    .line 380
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 381
    const/16 v0, 0x14

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/katana/FriendsActivity;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->i:Ljava/lang/String;

    return-object v0
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
    .line 314
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 316
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 317
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 265
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 267
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_1

    .line 268
    sget-object v0, Lcom/facebook/katana/FriendsActivity;->f:Ljava/lang/String;

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->finish()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 276
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0, v1, v1}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 279
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->j:Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$FriendsQuery;->a:[Ljava/lang/String;

    const-string v5, "display_name IS NOT NULL AND LENGTH(display_name) > 0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 294
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->o:Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/ConnectionsProvider;->k:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/UserSearchResultsAdapter$SearchResultsQuery;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v3, v3, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v1, v1, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->e()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 341
    if-lez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 345
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->i:Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    iget-object v0, v0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->k:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/katana/FriendsActivity;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->e:Ljava/lang/String;

    .line 352
    :cond_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    return-void
.end method
