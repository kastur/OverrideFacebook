.class public Lcom/facebook/katana/fragment/NotificationsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "NotificationsFragment.java"


# instance fields
.field private K:Lcom/facebook/katana/binding/AppSession;

.field private L:Lcom/facebook/katana/binding/AppSessionListener;

.field private M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

.field private N:I

.field private O:Landroid/view/View;

.field private P:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

.field private Q:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 159
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0267

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->Q:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->c(Z)V

    .line 276
    return-void

    :cond_1
    move v0, v1

    .line 273
    goto :goto_0

    .line 274
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->P:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/activity/notifications/NotificationsAdapter;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/activity/notifications/NotificationsAdapter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 201
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 204
    if-nez v1, :cond_0

    move-object v0, v7

    .line 237
    :goto_0
    return-object v0

    .line 207
    :cond_0
    instance-of v0, v1, Landroid/database/AbstractWindowedCursor;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v6

    .line 210
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 211
    :cond_1
    const-string v2, "STALE_CURSOR"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reopened temporary cursor to prevent StaleDataException. isclosed="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " windowClosed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v6

    .line 220
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    const-string v2, "is_read"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 223
    const-string v3, "notif_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 227
    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 228
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 233
    :cond_4
    if-eqz v0, :cond_5

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v7

    .line 237
    goto :goto_0

    :cond_6
    move v0, v2

    .line 207
    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;[J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    const-string v0, ","

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/service/method/NotificationsMarkRead;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;[J)Ljava/lang/String;

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/fragment/NotificationsFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/katana/fragment/NotificationsFragment;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/activity/notifications/NotificationsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->P:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->F()V

    .line 113
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->c()V

    .line 115
    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/fragment/NotificationsFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/fragment/NotificationsFragment$1;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/NotificationsProvider;->a(Landroid/content/Context;Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;)V

    .line 153
    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/fragment/NotificationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->F()V

    return-void
.end method

.method private c(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0800b0

    const v3, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/katana/fragment/NotificationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->c()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->P:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 302
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->Q:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->P:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    new-instance v1, Lcom/facebook/katana/fragment/NotificationsFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/fragment/NotificationsFragment$2;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->O:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->a(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/fragment/NotificationsFragment$NotificationsAppSessionListener;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment;B)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->L:Lcom/facebook/katana/binding/AppSessionListener;

    .line 80
    new-instance v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    .line 83
    iget-object v6, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->c(Landroid/os/Bundle;)V

    .line 317
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->E()V

    .line 318
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->b()Landroid/widget/ListView;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    new-instance v1, Lcom/facebook/katana/fragment/NotificationsFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/fragment/NotificationsFragment$3;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 392
    iget v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->N:I

    invoke-virtual {p0, v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->d(I)V

    .line 393
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->c()V

    .line 394
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput p1, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->N:I

    .line 293
    return-void
.end method

.method public final g_()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->g_()V

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->M:Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    iget-object v0, v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->b()V

    .line 134
    return-void
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->u()V

    .line 95
    invoke-direct {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->F()V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    .line 98
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->L:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->v()V

    .line 123
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->K:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment;->L:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 126
    :cond_0
    return-void
.end method
