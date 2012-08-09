.class public Lcom/facebook/orca/threadview/ThreadViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ThreadViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private A:Landroid/widget/TabHost;

.field private B:Landroid/widget/TabWidget;

.field private C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

.field private D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private F:Landroid/view/View;

.field private G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

.field private H:Lcom/facebook/orca/compose/LocationNuxController;

.field private I:Lcom/facebook/orca/compose/LocationNuxView;

.field private J:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private K:Ljava/lang/String;

.field private L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

.field private P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

.field private Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

.field private R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

.field private S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/facebook/orca/threads/ThreadSummary;

.field private af:Lcom/facebook/orca/threads/MessagesCollection;

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Lcom/facebook/orca/compose/ComposeMode;

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/cache/DataCache;

.field private g:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private h:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

.field private i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private j:Landroid/support/v4/app/FragmentManager;

.field private k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private l:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private m:Landroid/view/inputmethod/InputMethodManager;

.field private n:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private o:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private p:Lcom/facebook/orca/cache/SendMessageManager;

.field private q:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private r:Lcom/facebook/orca/cache/ReadThreadManager;

.field private s:Lcom/facebook/orca/cache/SaveDraftManager;

.field private t:Lcom/facebook/orca/threads/MessagesUiReorderer;

.field private u:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private v:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private w:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private y:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private z:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/server/ThreadCriteria;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Z)V

    .line 775
    :cond_1
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Z)V

    .line 782
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 785
    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    .line 952
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 953
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 955
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)V

    .line 965
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 966
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 979
    :cond_1
    :goto_0
    return-void

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    if-eqz v0, :cond_3

    .line 970
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-eqz v0, :cond_4

    .line 973
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 997
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->C()V

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 1001
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->i()V

    .line 1002
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1053
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    .line 1054
    iput-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    .line 1055
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->v()V

    .line 1056
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->t()Landroid/view/View;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v1, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewActivity;->I()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewActivity;->J()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1074
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity$8;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1098
    return-void

    :cond_0
    move v0, v2

    .line 1053
    goto :goto_0

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1064
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    const-string v3, "settings"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1068
    :goto_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewActivity;->H()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewActivity;->K()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1070
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->t()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 1066
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private F()V
    .locals 2

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->M:Ljava/util/List;

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 1102
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Ljava/util/List;

    goto :goto_0
.end method

.method private G()V
    .locals 4

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    if-nez v0, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1110
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/cache/ReadThreadManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ReadThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0
.end method

.method private static H()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1116
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1119
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1120
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1121
    return-object v0
.end method

.method private static I()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1125
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1128
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1129
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1130
    return-object v0
.end method

.method private static J()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1137
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1138
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1139
    return-object v0
.end method

.method private static K()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1143
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1146
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1147
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1148
    return-object v0
.end method

.method private a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 661
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->h:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a(I)Lcom/facebook/orca/tabs/TabIndicatorView;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1192
    :goto_0
    return-object v0

    .line 1171
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 1172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 1173
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 1178
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1180
    const-string v3, "orca:ThreadViewActivity"

    const-string v4, "Deduped message %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1186
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 1187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 1188
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1189
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 1192
    :cond_5
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadParticipant;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1247
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    new-instance v1, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1260
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1255
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1256
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1305
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 1308
    if-nez v1, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/ThreadParticipant;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1314
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 1317
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    sget v4, Lcom/facebook/orca/R$string;->view_contact_card_quick_action:I

    invoke-virtual {p0, v4}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/orca/R$id;->view_contact_card_quick_action_item:I

    const-string v6, "view_contact_card"

    invoke-direct {v0, v4, v5, v6}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1323
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    sget v1, Lcom/facebook/orca/R$string;->view_timeline_quick_action:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/facebook/orca/R$id;->view_timeline_quick_action_item:I

    const-string v5, "view_timeline"

    invoke-direct {v0, v1, v4, v5}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1329
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1330
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 1333
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    sget v2, Lcom/facebook/orca/R$string;->call_quick_action_with_number:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$id;->call_quick_action_item:I

    const-string v4, "call"

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1343
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1346
    :cond_3
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 1339
    :cond_4
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    sget v1, Lcom/facebook/orca/R$string;->call_quick_action:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$id;->call_quick_action_item:I

    const-string v4, "call"

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V
    .locals 3
    .parameter

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->b()I

    move-result v1

    .line 1234
    sget v2, Lcom/facebook/orca/R$id;->call_quick_action_item:I

    if-ne v1, v2, :cond_2

    .line 1235
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadParticipant;)V

    goto :goto_0

    .line 1236
    :cond_2
    sget v2, Lcom/facebook/orca/R$id;->view_contact_card_quick_action_item:I

    if-ne v1, v2, :cond_3

    .line 1237
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/threads/ThreadParticipant;)V

    goto :goto_0

    .line 1238
    :cond_3
    sget v2, Lcom/facebook/orca/R$id;->view_timeline_quick_action_item:I

    if-ne v1, v2, :cond_0

    .line 1239
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Lcom/facebook/orca/threads/ThreadParticipant;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->B()V

    .line 848
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    if-nez v0, :cond_2

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 850
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 856
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    if-eqz v0, :cond_1

    .line 857
    invoke-direct {p0, p1, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 858
    iput-boolean v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    .line 860
    :cond_1
    return-void

    .line 853
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Z)V

    .line 854
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->C()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 863
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 864
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 866
    if-eqz p2, :cond_0

    .line 867
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->t()Landroid/view/View;

    move-result-object v0

    .line 868
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 873
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->l:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 877
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    check-cast v0, Landroid/view/View;

    .line 871
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 797
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 802
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 803
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 804
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 805
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 813
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 815
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 816
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->t:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    .line 818
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Ljava/util/List;

    .line 822
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 823
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 824
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Z)V

    .line 825
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->C()V

    .line 827
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 828
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 830
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 840
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 841
    return-void

    .line 831
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_1

    .line 833
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 836
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->B()V

    .line 837
    iput-boolean v4, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    .line 508
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    .line 509
    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->q()V

    .line 512
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 446
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    return v0
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 941
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->F()V

    .line 942
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    if-eqz v0, :cond_0

    .line 943
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 944
    iput-boolean v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    .line 946
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 930
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    .line 932
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->C()V

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    .line 935
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1265
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/ThreadParticipant;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1268
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1269
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1270
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Ljava/lang/String;)V

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 1273
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 1274
    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1276
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1277
    sget v0, Lcom/facebook/orca/R$string;->call_quick_action_select_number:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity$9;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/google/common/collect/ImmutableList;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1285
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->b(Z)V

    .line 1371
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->b(Z)V

    .line 1358
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$10;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$10;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setQuickActionMenuListener(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->E()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1291
    const-string v0, "orca:ThreadViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calling phone number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1294
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1296
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1301
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1302
    return-void
.end method

.method private c(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 1008
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 1011
    return-void
.end method

.method private c(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 2
    .parameter

    .prologue
    .line 1374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/contacts/contactcard/ContactCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1375
    const-string v1, "participant"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1376
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1377
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->w()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->D()V

    return-void
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 587
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->W:Z

    if-eqz v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 592
    if-eqz p1, :cond_1

    .line 593
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 594
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 595
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 596
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 597
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 599
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->W:Z

    .line 600
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 601
    const-string v1, "for_sharing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 603
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/content/Intent;)V

    .line 604
    const-string v1, "for_sharing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 606
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->o()V

    goto :goto_0
.end method

.method private d(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 4
    .parameter

    .prologue
    .line 1380
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fb://profile/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1385
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1388
    invoke-static {p0, v0}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1391
    const-string v0, "http://m.facebook.com/profile.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1392
    const-string v0, "id"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1396
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1398
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ThreadViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->F()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 361
    sget-object v2, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 362
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->W:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    const-string v1, "focus_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "focus_compose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 430
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->t()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-string v2, "settings"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    .line 500
    return-void
.end method

.method private q()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->r()V

    .line 516
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/SaveDraftManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/SaveDraftManager;->b(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    .line 525
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 526
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/MessageDraft;)V

    .line 528
    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->c()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/cache/SaveDraftManager;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 533
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 538
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->b()V

    .line 540
    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 570
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    sget v2, Lcom/facebook/orca/R$id;->realtabcontent:I

    sget-object v3, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;->SHOW_HIDE:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;ILcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    .line 577
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v1, "messages"

    sget v2, Lcom/facebook/orca/R$string;->thread_view_messages_tab_title:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewFakeMessagesFragmentTab;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 582
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->T:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->X:Z

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v1, "settings"

    sget v2, Lcom/facebook/orca/R$string;->thread_view_details_tab_title:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 621
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->U:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v1, "people"

    sget v2, Lcom/facebook/orca/R$string;->thread_view_members_tab_title:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 632
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    .line 636
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v1, "map"

    sget v2, Lcom/facebook/orca/R$string;->thread_view_map_tab_title:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 643
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 647
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->F()V

    .line 649
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->C:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->X:Z

    .line 656
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->w()V

    goto/16 :goto_0
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 671
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    .line 673
    const-string v1, "messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Y:Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/prefs/PrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 677
    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 678
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 681
    :cond_0
    const-string v1, "messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 682
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "tl_tab_messages"

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    .line 717
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 719
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->aa:Z

    if-nez v0, :cond_3

    .line 720
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->F()V

    .line 722
    :cond_3
    return-void

    .line 689
    :cond_4
    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 690
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-nez v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->j:Landroid/support/v4/app/FragmentManager;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    .line 694
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_6

    .line 695
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Q:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 697
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "tl_tab_settings"

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 698
    :cond_7
    const-string v1, "people"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 699
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    if-nez v0, :cond_8

    .line 700
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->j:Landroid/support/v4/app/FragmentManager;

    const-string v1, "people"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    .line 703
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_9

    .line 704
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->R:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 706
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "tl_tab_memebers"

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 707
    :cond_a
    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-nez v0, :cond_b

    .line 709
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->j:Landroid/support/v4/app/FragmentManager;

    const-string v1, "map"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    .line 712
    :cond_b
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_c

    .line 713
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->S:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    .line 715
    :cond_c
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "tl_tab_map"

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 726
    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    .line 727
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->i()V

    .line 728
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->refresh:I

    sget v2, Lcom/facebook/orca/R$string;->menu_refresh:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_refresh:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->archive:I

    sget v2, Lcom/facebook/orca/R$string;->menu_archive:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_archive:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->delete:I

    sget v2, Lcom/facebook/orca/R$string;->menu_delete:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_delete:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    return-object v6
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    .line 218
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 220
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->setContentView(I)V

    .line 222
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 223
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    .line 224
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->g:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 225
    const-class v0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->h:Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    .line 226
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 227
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 228
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->j:Landroid/support/v4/app/FragmentManager;

    .line 229
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 230
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->l:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 231
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    .line 232
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 233
    const-class v0, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 234
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/cache/SendMessageManager;

    .line 235
    const-class v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 236
    const-class v0, Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ReadThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/cache/ReadThreadManager;

    .line 237
    const-class v0, Lcom/facebook/orca/cache/SaveDraftManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SaveDraftManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->s:Lcom/facebook/orca/cache/SaveDraftManager;

    .line 238
    const-class v0, Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesUiReorderer;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->t:Lcom/facebook/orca/threads/MessagesUiReorderer;

    .line 239
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->u:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 240
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 241
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 242
    const-class v0, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->w:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 243
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/contacts/annotations/IsShowContactCardEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->e:Ljavax/inject/Provider;

    .line 247
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->A:Landroid/widget/TabHost;

    .line 248
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->B:Landroid/widget/TabWidget;

    .line 249
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 250
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 251
    sget v0, Lcom/facebook/orca/R$id;->threadview_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->E:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 252
    sget v0, Lcom/facebook/orca/R$id;->thread_view_backside_content:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->F:Landroid/view/View;

    .line 253
    sget v0, Lcom/facebook/orca/R$id;->compose_location_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Lcom/facebook/orca/compose/LocationNuxView;

    .line 254
    sget v0, Lcom/facebook/orca/R$id;->compose_location_disabled_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationDisabledNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 255
    sget v0, Lcom/facebook/orca/R$id;->thread_view_rate_limit_popup:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    .line 257
    new-instance v2, Lcom/facebook/orca/compose/LocationNuxController;

    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct {v2, v0}, Lcom/facebook/orca/compose/LocationNuxController;-><init>(Lcom/facebook/orca/prefs/UiCounters;)V

    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/compose/LocationNuxController;

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/compose/LocationNuxController;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->I:Lcom/facebook/orca/compose/LocationNuxView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->J:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V

    .line 260
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 263
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 264
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$drawable;->orca_more_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    const-string v2, "back_side_button"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->g()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v1

    .line 272
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$drawable;->orca_bubble:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    const-string v2, "front_side_button"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->g()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 278
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->M:Ljava/util/List;

    .line 279
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->N:Ljava/util/List;

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/orca/R$string;->thread_list_view_updating:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0, v4}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasProgressBar(Z)V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->D:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 295
    const-string v0, "fetchThreadOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 308
    const-string v0, "fetchMoreMessagesOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 322
    const-string v0, "saveDetailsOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 323
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 334
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->thread_view_saving_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 337
    const-string v0, "saveDraftOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 339
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->j:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/facebook/orca/R$id;->thread_view_messages_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 342
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 344
    iput-boolean v4, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    .line 345
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->u()V

    .line 346
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->p()V

    .line 349
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 351
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->n()V

    .line 352
    return-void
.end method

.method final a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ah:Lcom/facebook/orca/compose/ComposeMode;

    .line 1028
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 1029
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->G:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 1030
    return-void
.end method

.method final a(Lcom/facebook/orca/server/ModifyThreadParams;)V
    .locals 3
    .parameter

    .prologue
    .line 982
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 989
    :goto_0
    return-void

    .line 986
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 988
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->z:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "modify_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final b(Z)V
    .locals 7
    .parameter

    .prologue
    .line 883
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 908
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    .line 910
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v6, 0x32

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 916
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b()V

    .line 918
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ad:Z

    .line 919
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 920
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 921
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_more_messages"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final b_(I)V
    .locals 3
    .parameter

    .prologue
    .line 1209
    sget v0, Lcom/facebook/orca/R$id;->refresh:I

    if-ne p1, v0, :cond_1

    .line 1210
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->x()V

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    sget v0, Lcom/facebook/orca/R$id;->archive:I

    if-ne p1, v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Lcom/facebook/orca/cache/ArchiveThreadManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 1215
    :cond_2
    sget v0, Lcom/facebook/orca/R$id;->delete:I

    if-ne p1, v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    const-string v1, "threadid"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->d(Landroid/os/Bundle;)V

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    .line 214
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "thread_view"

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method final h()V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->v:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 552
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 554
    const-string v0, "to"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method final i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 731
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 733
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 734
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 735
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->t:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->af:Lcom/facebook/orca/threads/MessagesCollection;

    .line 736
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ag:Ljava/util/List;

    .line 741
    invoke-direct {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Z)V

    .line 744
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    if-eqz v0, :cond_1

    .line 745
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->A()V

    .line 747
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 748
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 754
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->C()V

    .line 764
    :goto_1
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->f:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->A()V

    .line 751
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->O:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 758
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->A()V

    .line 762
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1
.end method

.method final j()V
    .locals 0

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->onBackPressed()V

    .line 1015
    return-void
.end method

.method final k()Lcom/facebook/orca/compose/ComposeMode;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ah:Lcom/facebook/orca/compose/ComposeMode;

    return-object v0
.end method

.method final l()V
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->P:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->t()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewActivity$7;-><init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1046
    return-void
.end method

.method final m()Lcom/facebook/orca/compose/LocationNuxController;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->H:Lcom/facebook/orca/compose/LocationNuxController;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->Z:Z

    if-nez v0, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->E()V

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 437
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 438
    sget v1, Lcom/facebook/orca/R$menu;->thread_view_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onDestroy()V

    .line 406
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 407
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 410
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->t()V

    .line 481
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/FbFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 451
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 452
    sget v2, Lcom/facebook/orca/R$id;->refresh:I

    if-ne v1, v2, :cond_1

    .line 453
    const-string v1, "refresh"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->x()V

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    sget v2, Lcom/facebook/orca/R$id;->archive:I

    if-ne v1, v2, :cond_2

    .line 457
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "archive"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Lcom/facebook/orca/cache/ArchiveThreadManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 462
    :cond_2
    sget v2, Lcom/facebook/orca/R$id;->delete:I

    if-ne v1, v2, :cond_3

    .line 463
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "delete"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Ljava/lang/String;)V

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    const-string v2, "threadid"

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ae:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 471
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPause()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->k:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 400
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->s()V

    .line 401
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 379
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 380
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->V:Z

    .line 381
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    const-string v1, "from_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 383
    if-eqz v1, :cond_0

    .line 387
    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 388
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ac:Z

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->g:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->i()V

    .line 392
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->G()V

    .line 393
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStart()V

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a()V

    .line 369
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 375
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onUserInteraction()V

    .line 491
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->g:Lcom/facebook/orca/notify/OrcaNotificationManager;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->g:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->G()V

    .line 495
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onWindowFocusChanged(Z)V

    .line 415
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->ab:Z

    .line 416
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->G()V

    .line 417
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->o()V

    .line 418
    return-void
.end method
