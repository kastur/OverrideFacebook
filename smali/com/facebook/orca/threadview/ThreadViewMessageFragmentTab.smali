.class public Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewMessageFragmentTab.java"


# static fields
.field private static final J:J


# instance fields
.field private K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroid/view/inputmethod/InputMethodManager;

.field private M:Lcom/facebook/orca/cache/SendMessageManager;

.field private N:Landroid/text/ClipboardManager;

.field private O:Landroid/support/v4/app/FragmentManager;

.field private P:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

.field private Q:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

.field private R:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/facebook/orca/cache/DataCache;

.field private T:Landroid/os/Handler;

.field private U:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private V:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private W:Landroid/widget/LinearLayout;

.field private X:Landroid/view/View;

.field private Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

.field private Z:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

.field private ab:Landroid/widget/FrameLayout;

.field private ac:Lcom/facebook/orca/compose/ComposeFragment;

.field private ad:Landroid/view/View;

.field private ae:Lcom/facebook/orca/compose/LocationNuxController;

.field private af:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private ag:Ljava/lang/String;

.field private ah:Lcom/facebook/orca/compose/ComposeMode;

.field private ai:Lcom/facebook/orca/common/util/TriState;

.field private aj:Z

.field private ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

.field private al:Lcom/facebook/orca/presence/PresenceState;

.field private am:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

.field private an:Lcom/facebook/orca/threads/MessagesCollection;

.field private ao:Lcom/facebook/orca/threads/ThreadSummary;

.field private ap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Landroid/graphics/drawable/Drawable;

.field private ar:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->J:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 105
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Z

    .line 110
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    return-void
.end method

.method private G()V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "orca:ThreadViewMessageFragmentTab"

    const-string v1, "Scheduling timestamp update"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    sget-wide v2, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->J:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    return-void

    .line 294
    :cond_1
    const-string v0, "orca:ThreadViewMessageFragmentTab"

    const-string v1, "Updating timestamps"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    instance-of v3, v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;

    if-eqz v3, :cond_2

    .line 298
    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;

    .line 299
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/orca/threadview/MessageItemView;

    if-eqz v3, :cond_2

    .line 301
    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/MessageItemView;

    .line 302
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageItemView;->a()V

    .line 295
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private I()Lcom/facebook/orca/threadview/RowItem;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 333
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    move-object v0, v1

    .line 338
    goto :goto_0
.end method

.method private J()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 373
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 375
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 376
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    goto :goto_0
.end method

.method private K()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 384
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 386
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->send_empty_message:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->E()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 706
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M()V

    .line 707
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->G()V

    .line 708
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/LocationNuxController;->a()V

    goto :goto_0
.end method

.method private M()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getCount()I

    move-result v0

    .line 713
    if-lez v0, :cond_0

    .line 714
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getLastVisiblePosition()I

    move-result v1

    .line 715
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 716
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->smoothScrollToPosition(I)V

    .line 719
    :cond_0
    return-void
.end method

.method private N()Z
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 786
    :goto_0
    return v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 786
    instance-of v0, v0, Lcom/facebook/orca/threadview/RowTypingItem;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 460
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 461
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 462
    new-instance v2, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-direct {v2, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->R:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->P:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {v0, p1, p3}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/Map;

    move-result-object v6

    .line 469
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 470
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    .line 472
    if-eqz v0, :cond_1

    .line 473
    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$8;->a:[I

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d()Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    :cond_1
    move-object v0, v4

    .line 507
    :goto_2
    new-instance v2, Lcom/facebook/orca/threadview/RowMessageItem;

    iget-object v8, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v8, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v2, v1, v8, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :pswitch_0
    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->e()J

    move-result-wide v8

    invoke-static {v2, v1, v8, v9}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Ljava/util/List;Lcom/facebook/orca/threads/Message;J)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    goto :goto_2

    .line 482
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    iget-object v8, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v8}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 486
    const/4 v2, 0x1

    .line 488
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    invoke-static {v0, v1, v2, v8}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Ljava/util/List;Lcom/facebook/orca/threads/Message;ZI)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    goto :goto_2

    .line 496
    :pswitch_1
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    goto :goto_2

    .line 501
    :pswitch_2
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->c()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    goto :goto_2

    .line 513
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 514
    new-instance v2, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-direct {v2, v0, v4}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 519
    :cond_4
    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 522
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    new-instance v1, Lcom/facebook/orca/threadview/RowTypingItem;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/orca/threadview/RowTypingItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;)V

    .line 525
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 527
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 528
    new-instance v2, Lcom/facebook/orca/threadview/RowMessageItem;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    invoke-interface {v5, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_5
    invoke-interface {v5, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    :cond_6
    return-object v5

    :cond_7
    move v2, v3

    goto/16 :goto_3

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Z

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    if-nez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 682
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 683
    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne v0, v1, :cond_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;)V
    .locals 4
    .parameter

    .prologue
    .line 729
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->a()Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    if-ne v0, v1, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M()V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 734
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 735
    if-eqz v0, :cond_2

    .line 736
    if-lez v1, :cond_0

    .line 737
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 732
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 391
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 392
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 726
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadview/RowItem;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->I()Lcom/facebook/orca/threadview/RowItem;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v1

    .line 344
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-ne v0, v2, :cond_1

    .line 347
    :cond_0
    invoke-virtual {v1, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(I)V

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {v1, v3, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(ILjava/lang/Object;)V

    .line 352
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b()V

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->L()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Z)V

    return-void
.end method

.method private b(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;
    .locals 2
    .parameter

    .prologue
    .line 668
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 670
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 671
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_0

    .line 672
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 311
    :goto_0
    if-eqz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    if-ne v1, v2, :cond_3

    .line 313
    const/4 v0, 0x1

    .line 319
    :cond_0
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 322
    :cond_1
    return-void

    .line 310
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 316
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Z)V

    .line 748
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()V

    return-void
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N()Z

    move-result v3

    .line 752
    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v2}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 753
    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v3}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 756
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 752
    goto :goto_0

    :cond_2
    move v0, v1

    .line 753
    goto :goto_1

    .line 765
    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;

    move-result-object v0

    .line 771
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-direct {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V

    .line 772
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(ZLjava/util/List;Lcom/facebook/orca/threads/ParticipantInfo;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->G()V

    return-void
.end method

.method private e(I)V
    .locals 5
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->k()Lcom/facebook/orca/compose/ComposeMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->J()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 560
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_4

    .line 561
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 562
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 563
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const-class v4, Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v3, "thread_id"

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v3, "message"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 568
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v3, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->GROUP_READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v3, :cond_2

    .line 572
    const-string v1, "readers"

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 577
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 580
    const-string v1, "other_readers"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 583
    :cond_3
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    :cond_4
    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne v0, v1, :cond_0

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Z)V

    goto :goto_0
.end method

.method private f(I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 602
    add-int/lit8 v0, p1, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 604
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_2

    .line 605
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 606
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v4, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->GROUP_READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v4, :cond_1

    .line 608
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    .line 609
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    .line 610
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 611
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 615
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v1

    if-nez v1, :cond_2

    .line 616
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 617
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 619
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 624
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    const-string v0, "composeMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 271
    const-string v0, "canReplyTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method final E()Lcom/facebook/orca/compose/ComposeFragment;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    return-object v0
.end method

.method final F()V
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowItem;)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Z

    .line 552
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_messages_tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 404
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/threads/ThreadSummary;

    .line 405
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threads/MessagesCollection;

    .line 406
    iput-object p3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Ljava/util/List;

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 409
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    .line 410
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->J()V

    .line 416
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Q:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;->b(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;

    move-result-object v2

    .line 417
    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 419
    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;

    move-result-object v3

    .line 424
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Z

    if-eqz v0, :cond_5

    .line 426
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 435
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v6, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v5

    .line 438
    if-eqz v5, :cond_2

    .line 439
    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 441
    :cond_2
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v6, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    new-instance v7, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-direct {v7, v8, v4, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    .line 446
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V

    .line 447
    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/util/List;)V

    .line 448
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()V

    .line 450
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setEmptyView(Landroid/view/View;)V

    .line 451
    invoke-direct {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;)V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Z

    .line 453
    return-void

    .line 409
    :cond_3
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto/16 :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K()V

    goto/16 :goto_1

    .line 428
    :cond_5
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_1

    .line 651
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :goto_0
    return v0

    .line 654
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 655
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_1

    .line 657
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 658
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v2, "message_ids"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/content/Intent;)V

    .line 664
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowItem;)V

    .line 326
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 361
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 362
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 364
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M()V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 138
    const-class v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    .line 139
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->L:Landroid/view/inputmethod/InputMethodManager;

    .line 140
    const-class v1, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M:Lcom/facebook/orca/cache/SendMessageManager;

    .line 141
    const-class v1, Landroid/text/ClipboardManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N:Landroid/text/ClipboardManager;

    .line 142
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->O:Landroid/support/v4/app/FragmentManager;

    .line 143
    const-class v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->P:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    .line 145
    const-class v1, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    .line 146
    const-class v1, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->R:Ljavax/inject/Provider;

    .line 148
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->S:Lcom/facebook/orca/cache/DataCache;

    .line 149
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->U:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 150
    const-class v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->V:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 152
    sget v1, Lcom/facebook/orca/R$id;->update_list_container:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->W:Landroid/widget/LinearLayout;

    .line 153
    sget v1, Lcom/facebook/orca/R$id;->create_dummy_focus_elt:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->X:Landroid/view/View;

    .line 154
    sget v1, Lcom/facebook/orca/R$id;->messages_list:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    .line 155
    sget v1, Lcom/facebook/orca/R$id;->threadview_updates_empty_item:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 156
    sget v1, Lcom/facebook/orca/R$id;->thread_view_mute_warning:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    .line 157
    sget v1, Lcom/facebook/orca/R$id;->thread_view_animation_container:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 161
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->O:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/facebook/orca/R$id;->messages_compose:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/compose/ComposeFragment;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    .line 162
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->m()Lcom/facebook/orca/compose/LocationNuxController;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/compose/LocationNuxController;

    .line 163
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 164
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment;->t()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    .line 168
    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/ui/widgets/animatablelistview/ItemBasedListAdapter;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setDividerHeight(I)V

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setStackFromBottom(Z)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setTranscriptMode(I)V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setItemsCanFocus(Z)V

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setEmptyView(Landroid/view/View;)V

    .line 192
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Q:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    .line 193
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;-><init>(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$drawable;->transparent_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_no_updates:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setThreadId(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/compose/ComposeFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V

    .line 221
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->am:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->am:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;)V

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->T:Landroid/os/Handler;

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(Landroid/os/Bundle;)V

    .line 233
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->d()V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 247
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "composeMode"

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    const-string v0, "canReplyTo"

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 267
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->e()V

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 253
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 633
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    if-ne p2, v0, :cond_0

    .line 634
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 635
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 636
    instance-of v0, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_0

    .line 637
    sget v0, Lcom/facebook/orca/R$string;->message_context_menu_title:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 638
    sget v0, Lcom/facebook/orca/R$string;->message_context_menu_copy_message:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 640
    sget v0, Lcom/facebook/orca/R$string;->message_context_menu_delete_message:I

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 644
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()V

    .line 258
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->G()V

    .line 259
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()V

    .line 260
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 240
    return-void
.end method
