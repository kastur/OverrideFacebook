.class public Lcom/facebook/katana/activity/media/AlbumsActivity;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.source "AlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/TabProgressSource;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/binding/AppSessionListener;

.field private n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

.field private o:J

.field private p:Lcom/facebook/katana/model/FacebookAlbum;

.field private q:Z

.field private r:Lcom/facebook/katana/TabProgressListener;

.field private s:Ljava/lang/String;

.field private t:Lcom/facebook/katana/util/logging/PerformanceMarker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/AlbumsActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    const-string v1, "extra_exclude_read_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/AlbumsActivity;Lcom/facebook/katana/model/FacebookAlbum;)Lcom/facebook/katana/model/FacebookAlbum;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/AlbumsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/AlbumsActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->t:Lcom/facebook/katana/util/logging/PerformanceMarker;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0800b0

    const v3, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->r:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->r:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, p1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 511
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->q:Z

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 515
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/AlbumsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->q()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/AlbumsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->v()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/model/FacebookAlbum;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 451
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->t:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 452
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->t:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 453
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    .line 454
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->p()V

    .line 455
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(Z)V

    .line 456
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 472
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 474
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    const v1, 0x7f08003d

    .line 481
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 164
    iput-boolean v6, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->m:Z

    .line 165
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->setContentView(I)V

    .line 169
    invoke-static {p0, v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    .line 183
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "state_album_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-static {p0, v1}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    .line 198
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    iget-object v3, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 199
    const v1, 0x7f020001

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->c(I)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->j()V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->h()V

    .line 206
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->s()Landroid/widget/ListView;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_exclude_read_only"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<>\'profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_exclude_empty"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "> 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    new-instance v3, Lcom/facebook/katana/activity/media/AlbumsAdapter;

    const-string v4, " AND "

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/facebook/katana/activity/media/AlbumsAdapter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/katana/binding/AppSession;)V

    iput-object v3, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    .line 227
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 228
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_4
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->l()V

    .line 235
    new-instance v0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;

    invoke-direct {v0, p0, v6}, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/AlbumsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 238
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 240
    return-void

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    .line 193
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->g:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->r:Lcom/facebook/katana/TabProgressListener;

    .line 495
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->r:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->r:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->q:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 499
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    return-void

    .line 544
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->k()V

    goto :goto_0

    .line 549
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 525
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 526
    const/4 v0, 0x1

    const v1, 0x7f0b035b

    const v2, 0x7f020229

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(III)V

    .line 527
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    iget-object v2, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x2

    const v1, 0x7f0b0185

    const v2, 0x7f020222

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(III)V

    .line 531
    :cond_0
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 536
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v2, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(IZ)V

    .line 537
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->h()V

    .line 465
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    if-nez p2, :cond_0

    .line 302
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 339
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->f(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 345
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 360
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 341
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 348
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->f:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    .line 359
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->showDialog(I)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 309
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 317
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 324
    iget-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    iget-object v3, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const/4 v1, 0x4

    const v2, 0x7f0b018b

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 327
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->d(Landroid/database/Cursor;)I

    move-result v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x5

    const v1, 0x7f0b0186

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 426
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    new-instance v5, Lcom/facebook/katana/activity/media/AlbumsActivity$1;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/media/AlbumsActivity$1;-><init>(Lcom/facebook/katana/activity/media/AlbumsActivity;)V

    .line 410
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 419
    const v1, 0x7f0b0189

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 421
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 373
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-virtual {p0, p3}, Lcom/facebook/katana/activity/media/AlbumsActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 374
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 376
    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->f:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 379
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->setResult(ILandroid/content/Intent;)V

    .line 380
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->finish()V

    .line 391
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->a()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 389
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsAdapter;->b(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 278
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 441
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 444
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onResume()V

    .line 247
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 250
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->removeDialog(I)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->s:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->n:Lcom/facebook/katana/activity/media/AlbumsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->v()V

    .line 262
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->k()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "state_album_id"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity;->p:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    invoke-static {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    return-void
.end method
