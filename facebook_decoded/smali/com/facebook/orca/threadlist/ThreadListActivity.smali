.class public Lcom/facebook/orca/threadlist/ThreadListActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ThreadListActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/activity/ScrollingActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static e:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/ScrollingActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/orca/cache/DataCache;

.field private h:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private i:Lcom/facebook/orca/debug/LogReportSender;

.field private j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private k:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private m:Lcom/facebook/orca/threadlist/ThreadListFragment;

.field private n:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

.field private o:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

.field private p:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

.field private q:Landroid/widget/FrameLayout;

.field private r:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

.field private s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "messenger_switch_user_text_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListActivity;->e:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 74
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->f:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/threadlist/ThreadListFragment;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->k:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 286
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListActivity;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->f:Ljava/util/Set;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b()V

    .line 199
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/auth/LogoutHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/LogoutHandler;

    .line 290
    invoke-interface {v0}, Lcom/facebook/orca/auth/LogoutHandler;->a()V

    .line 291
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/auth/AboutHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AboutHandler;

    .line 344
    invoke-interface {v0}, Lcom/facebook/orca/auth/AboutHandler;->a()V

    .line 345
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 348
    const-string v0, "http://m.facebook.com/mobile/messenger/help"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 349
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/locale/FBLocaleMapper;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 13
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
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c()V

    .line 378
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->new_thread:I

    sget v2, Lcom/facebook/orca/R$string;->menu_new_thread:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_add:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    new-instance v6, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v7, Lcom/facebook/orca/R$id;->chat_go_offline_menu_item:I

    sget v8, Lcom/facebook/orca/R$string;->chat_go_offline:I

    sget v9, Lcom/facebook/orca/R$drawable;->orca_ic_menu_chatvisibility:I

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v10, v4

    :cond_0
    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_0
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->view_archived_messages:I

    sget v2, Lcom/facebook/orca/R$string;->view_archived_messages:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_messages_archived:I

    const-string v5, "fb://messages/inbox/archived"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->view_other_messages:I

    sget v2, Lcom/facebook/orca/R$string;->view_other_messages:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_messages_other:I

    const-string v5, "fb://messages/inbox/other"

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-object v12

    .line 385
    :cond_1
    new-instance v6, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v7, Lcom/facebook/orca/R$id;->chat_go_online_menu_item:I

    sget v8, Lcom/facebook/orca/R$string;->chat_go_online:I

    sget v9, Lcom/facebook/orca/R$drawable;->orca_ic_menu_chatvisibility:I

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v10, v4

    :cond_2
    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "ThreadListActivity.onActivityCreate"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 114
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->g:Lcom/facebook/orca/cache/DataCache;

    .line 115
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->h:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 116
    const-class v0, Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/LogReportSender;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->i:Lcom/facebook/orca/debug/LogReportSender;

    .line 117
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 118
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->k:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 120
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 121
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v2, Lcom/facebook/orca/R$string;->thread_list_title:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasProgressBar(Z)V

    .line 126
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$drawable;->orca_compose:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    const-string v2, "compose_button"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->g()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-interface {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 142
    sget v2, Lcom/facebook/orca/R$id;->orca_threadlist_fragment:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    sget v0, Lcom/facebook/orca/R$id;->thread_list_version_upgrade_promo:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    .line 145
    sget v0, Lcom/facebook/orca/R$id;->thread_list_mute_warning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    .line 146
    sget v0, Lcom/facebook/orca/R$id;->thread_list_sync_disabled_warning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    .line 147
    sget v0, Lcom/facebook/orca/R$id;->thread_list_animation_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Landroid/widget/FrameLayout;

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->l:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 150
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    .line 164
    const-class v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c()V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 168
    return-void
.end method

.method public final a(Lcom/facebook/orca/activity/ScrollingActivityListener;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public final b_(I)V
    .locals 2
    .parameter

    .prologue
    .line 366
    sget v0, Lcom/facebook/orca/R$id;->new_thread:I

    if-ne p1, v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->E()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget v0, Lcom/facebook/orca/R$id;->chat_go_offline_menu_item:I

    if-ne p1, v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a(Z)V

    goto :goto_0

    .line 370
    :cond_2
    sget v0, Lcom/facebook/orca/R$id;->chat_go_online_menu_item:I

    if-ne p1, v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a(Z)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "thread_list"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onAttachedToWindow()V

    .line 101
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 104
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 239
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v2, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v2, :cond_1

    .line 241
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    const-string v3, "threadid"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 257
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 250
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 251
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 252
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 253
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 257
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    .line 218
    if-ne p2, v0, :cond_0

    .line 219
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 220
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 221
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    instance-of v0, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 223
    sget v0, Lcom/facebook/orca/R$string;->thread_context_menu_title:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 224
    sget v0, Lcom/facebook/orca/R$string;->thread_context_menu_archive_conversation:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 226
    sget v0, Lcom/facebook/orca/R$string;->thread_context_menu_delete_conversation:I

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 230
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 263
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 264
    sget v1, Lcom/facebook/orca/R$menu;->thread_list_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->g:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget v0, Lcom/facebook/orca/R$id;->send_log_menu_item:I

    sget v1, Lcom/facebook/orca/R$string;->debug_log_send:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    sget v0, Lcom/facebook/orca/R$id;->force_crash_menu_item:I

    sget v1, Lcom/facebook/orca/R$string;->debug_force_crash:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListActivity;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    sget v0, Lcom/facebook/orca/R$id;->logout:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 279
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_1
    sget v0, Lcom/facebook/orca/R$id;->switch_user:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 297
    sget v2, Lcom/facebook/orca/R$id;->refresh:I

    if-ne v1, v2, :cond_0

    .line 298
    const-string v1, "refresh"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->g()V

    .line 333
    :goto_0
    return v0

    .line 301
    :cond_0
    sget v2, Lcom/facebook/orca/R$id;->new_thread:I

    if-ne v1, v2, :cond_1

    .line 302
    const-string v1, "new_thread"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->E()V

    goto :goto_0

    .line 305
    :cond_1
    sget v2, Lcom/facebook/orca/R$id;->logout:I

    if-ne v1, v2, :cond_2

    .line 306
    const-string v1, "logout"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h()V

    goto :goto_0

    .line 309
    :cond_2
    sget v2, Lcom/facebook/orca/R$id;->switch_user:I

    if-ne v1, v2, :cond_3

    .line 310
    const-string v1, "switch_user"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->h()V

    goto :goto_0

    .line 313
    :cond_3
    sget v2, Lcom/facebook/orca/R$id;->about:I

    if-ne v1, v2, :cond_4

    .line 314
    const-string v1, "about"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->j()V

    goto :goto_0

    .line 317
    :cond_4
    sget v2, Lcom/facebook/orca/R$id;->help:I

    if-ne v1, v2, :cond_5

    .line 318
    const-string v1, "help"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->k()V

    goto :goto_0

    .line 321
    :cond_5
    sget v2, Lcom/facebook/orca/R$id;->preferences:I

    if-ne v1, v2, :cond_6

    .line 322
    const-string v1, "preferences"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->i()V

    goto :goto_0

    .line 325
    :cond_6
    sget v2, Lcom/facebook/orca/R$id;->send_log_menu_item:I

    if-ne v1, v2, :cond_7

    .line 326
    const-string v1, "send_log_menu_item"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->i:Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {v1}, Lcom/facebook/orca/debug/LogReportSender;->a()V

    goto :goto_0

    .line 329
    :cond_7
    sget v0, Lcom/facebook/orca/R$id;->force_crash_menu_item:I

    if-ne v1, v0, :cond_8

    .line 330
    const-string v0, "force_crash_menu_item"

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Forcing crash (internal)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_8
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPause()V

    .line 193
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "ThreadListActivity.onPause"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;)V

    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 173
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "ThreadListActivity.onResume"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->h:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c()V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->g:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setAppConfig(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b()V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;)V

    .line 188
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onUserInteraction()V

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->m:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c()V

    .line 208
    :cond_0
    return-void
.end method
