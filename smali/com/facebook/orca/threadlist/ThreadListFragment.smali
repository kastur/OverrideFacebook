.class public Lcom/facebook/orca/threadlist/ThreadListFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadListFragment.java"


# static fields
.field private static final J:J


# instance fields
.field private K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

.field private L:Lcom/facebook/orca/cache/DataCache;

.field private M:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

.field private O:Lcom/facebook/orca/server/BackgroundRefreshRunner;

.field private P:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private R:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private S:Lcom/facebook/orca/prefs/UiCounters;

.field private T:Landroid/media/AudioManager;

.field private U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private V:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private W:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private X:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

.field private aa:Landroid/widget/ListView;

.field private ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private ac:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

.field private ad:Z

.field private ae:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

.field private af:Z

.field private ag:Z

.field private ah:Lcom/facebook/orca/threads/ThreadsCollection;

.field private ai:Lcom/facebook/orca/threads/FolderName;

.field private aj:J

.field private ak:J

.field private al:J

.field private am:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 86
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/threadlist/ThreadListFragment;->J:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Z

    .line 116
    invoke-static {}, Lcom/facebook/orca/threads/ThreadsCollection;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 117
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    .line 119
    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:J

    .line 120
    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:J

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:I

    .line 619
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->e(Lcom/facebook/orca/threads/FolderName;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:J

    .line 316
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:J

    .line 319
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->P()V

    .line 322
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Z

    .line 331
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->H()V

    .line 338
    :goto_1
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->P()V

    .line 326
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->O()V

    goto :goto_0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->P()V

    .line 336
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1
.end method

.method private H()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;->a()V

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;->a()V

    .line 470
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    goto :goto_0
.end method

.method private I()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 483
    :goto_0
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 485
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 487
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 488
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iget-wide v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setLastLoadedTime(J)V

    .line 489
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$6;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 495
    iput-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Z

    .line 496
    return-void

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Z

    if-eqz v0, :cond_2

    .line 478
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    goto :goto_0

    .line 480
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE_PLACEHOLDER:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    goto :goto_0
.end method

.method private J()V
    .locals 5

    .prologue
    .line 502
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->W:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 519
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadsCollection;->a(I)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    .line 522
    new-instance v2, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(Lcom/facebook/orca/threads/FolderName;JI)V

    .line 523
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOADING:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 524
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 528
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->W:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_more_threads"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private K()V
    .locals 2

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Z

    .line 550
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 551
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 552
    return-void
.end method

.method private L()V
    .locals 5

    .prologue
    .line 575
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 576
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 577
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v0

    .line 578
    :goto_0
    if-gt v1, v3, :cond_1

    .line 579
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 580
    instance-of v4, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v4, :cond_0

    .line 581
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 582
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->O:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Ljava/util/List;)V

    .line 586
    return-void
.end method

.method private M()V
    .locals 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->X:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 604
    iget-wide v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 610
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 611
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->X:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v4, "mark_folder_seen"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 612
    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:J

    goto :goto_0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Z

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getCount()I

    move-result v0

    .line 648
    if-lez v0, :cond_0

    iget v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:I

    if-ne v1, v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 650
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 652
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->J()V

    goto :goto_0
.end method

.method private O()V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "chat_get_visibility"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 663
    :cond_0
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a(Z)V

    .line 687
    :cond_1
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a(Z)V

    .line 696
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q()V

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 436
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/ops/ServiceException;)V

    .line 438
    iput-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    .line 440
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v0, "orca:ThreadListFragment"

    const-string v1, "Starting FETCH_THREADS"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 352
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread_list"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_list_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 362
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 5
    .parameter

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 400
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 401
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 402
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:J

    .line 403
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:J

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 406
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 407
    iget-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v3, :cond_0

    .line 409
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->H()V

    .line 423
    return-void

    .line 410
    :cond_0
    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v3, :cond_1

    .line 412
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-wide v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:J

    sub-long v0, v1, v3

    sget-wide v2, Lcom/facebook/orca/threadlist/ThreadListFragment;->J:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 415
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    .line 420
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->O()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:I

    return p1
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 443
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    sget v1, Lcom/facebook/orca/R$id;->error_toast_dock:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->d(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->R:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 450
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 537
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threads/ThreadsCollection;->a(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 540
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 541
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    .line 543
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->G()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->K()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    instance-of v2, v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    if-eqz v2, :cond_0

    .line 384
    check-cast v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    .line 385
    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->c()V

    .line 380
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadlist/ThreadListFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/orca/threadlist/ThreadListFragment;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->T:Landroid/media/AudioManager;

    return-object v0
.end method

.method private e(I)V
    .locals 4
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 556
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->E()V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_2

    .line 559
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 560
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 563
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->J()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->L()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->O:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->N()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->S:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "compose_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Landroid/content/Intent;)V

    .line 572
    return-void
.end method

.method public final F()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 189
    sget v0, Lcom/facebook/orca/R$id;->threadlist_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 190
    sget v0, Lcom/facebook/orca/R$id;->thread_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    .line 191
    sget v0, Lcom/facebook/orca/R$id;->thread_list_loading_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 192
    sget v0, Lcom/facebook/orca/R$id;->thread_list_empty_item:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    .line 193
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    const-string v2, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "com.facebook.orca.ACTION_READ_THREAD_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v2, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    .line 153
    const-string v1, "fetchThreadsOperation"

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->V:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 166
    const-string v1, "fetchMoreThreadsOperation"

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->W:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 167
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->W:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$3;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 180
    const-string v1, "markFolderSeenOperation"

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->X:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 181
    const-string v1, "getChatVisibilityOperation"

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 183
    return-void
.end method

.method public final a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->U:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 676
    return-void
.end method

.method public final a(Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->K:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    .line 617
    return-void
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->P:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 590
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    .line 591
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    .line 295
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 296
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->M:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 300
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->M()V

    .line 301
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "orca:ThreadListFragment"

    const-string v1, "ThreadListFragment.onActivityCreated"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 202
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->L:Lcom/facebook/orca/cache/DataCache;

    .line 203
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->M:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 204
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    .line 205
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->O:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    .line 206
    const-class v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->P:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 207
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 208
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->R:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 209
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->S:Lcom/facebook/orca/prefs/UiCounters;

    .line 210
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->T:Landroid/media/AudioManager;

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->N:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$4;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$5;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 250
    return-void
.end method

.method public final u()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 263
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()V

    .line 264
    const-string v1, "orca:ThreadListFragment"

    const-string v2, "ThreadListFragment.onResume"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 267
    if-nez v1, :cond_1

    .line 269
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    const-string v0, "from_notification"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->M:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 275
    iput-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Z

    .line 276
    iput-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Z

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->G()V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a()V

    .line 283
    return-void

    .line 267
    :cond_1
    const-string v2, "from_notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 288
    const-string v0, "orca:ThreadListFragment"

    const-string v1, "ThreadListFragment.onPause"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 291
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 259
    return-void
.end method
