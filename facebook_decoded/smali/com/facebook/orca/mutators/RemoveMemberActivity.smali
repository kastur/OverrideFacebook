.class public Lcom/facebook/orca/mutators/RemoveMemberActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "RemoveMemberActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/threads/ThreadSummary;

.field private g:Lcom/facebook/orca/users/User;

.field private h:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/RemoveMemberActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/RemoveMemberActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->l()V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 122
    return-void
.end method

.method private j()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 46
    sget v1, Lcom/facebook/orca/R$string;->thread_remove_member_confirm_heading:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 47
    sget v1, Lcom/facebook/orca/R$string;->thread_remove_member_confirm_msg:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 49
    sget v1, Lcom/facebook/orca/R$string;->thread_remove_member_confirm_ok_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;->DELETE:Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;)V

    .line 51
    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RemoveMemberParams;

    iget-object v1, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->f:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RemoveMemberParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v2, "removeMemberParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "remove_member"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->finish()V

    .line 112
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 59
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, "user_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->f:Lcom/facebook/orca/threads/ThreadSummary;

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->g:Lcom/facebook/orca/users/User;

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->f:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->g:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->j()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 75
    const-string v0, "removeMemberOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/mutators/RemoveMemberActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity$1;-><init>(Lcom/facebook/orca/mutators/RemoveMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/mutators/RemoveMemberActivity;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->thread_remove_member_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "remove_member"

    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/facebook/orca/mutators/RemoveMemberActivity;->k()V

    .line 94
    return-void
.end method
