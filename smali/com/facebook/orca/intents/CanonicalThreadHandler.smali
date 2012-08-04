.class public Lcom/facebook/orca/intents/CanonicalThreadHandler;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "CanonicalThreadHandler.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private h:Lcom/facebook/orca/users/UserKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 119
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->f()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    const-string v2, "focus_compose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v3, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "focus_compose"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 153
    return-void

    .line 129
    :cond_0
    if-eqz v1, :cond_3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 134
    if-nez v2, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->m()Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->m()Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 139
    const-string v1, "to"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    :cond_1
    :goto_1
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 143
    const-string v1, "to"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/facebook/orca/R$layout;->orca_loading_screen:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 58
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->e:Lcom/facebook/orca/cache/DataCache;

    .line 59
    sget v0, Lcom/facebook/orca/R$id;->empty_item_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    const-string v1, "user_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->h:Lcom/facebook/orca/users/UserKey;

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->h:Lcom/facebook/orca/users/UserKey;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v1, "fetchCanonicalThread"

    invoke-static {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 69
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;-><init>(Lcom/facebook/orca/intents/CanonicalThreadHandler;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 82
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v2, Lcom/facebook/orca/R$string;->thread_list_loading:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->h:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    const-string v2, "focus_compose"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v3, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "focus_compose"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "canonical_thread_handler"

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->h:Lcom/facebook/orca/users/UserKey;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method
