.class public Lcom/facebook/orca/mutators/LeaveThreadActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "LeaveThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private g:Lcom/facebook/orca/threads/ThreadSummary;

.field private h:Lcom/facebook/orca/users/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/LeaveThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/LeaveThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->l()V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 117
    return-void
.end method

.method private j()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 37
    sget v1, Lcom/facebook/orca/R$string;->thread_leave_confirm_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 38
    sget v1, Lcom/facebook/orca/R$string;->thread_leave_confirm_msg:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 39
    sget v1, Lcom/facebook/orca/R$string;->thread_leave_confirm_ok_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;->DELETE:Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;)V

    .line 41
    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RemoveMemberParams;

    iget-object v1, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->h:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RemoveMemberParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v2, "removeMemberParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "remove_member"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->finish()V

    .line 107
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 54
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->h:Lcom/facebook/orca/users/User;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->h:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->j()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 69
    const-string v0, "leaveThreadOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/mutators/LeaveThreadActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity$1;-><init>(Lcom/facebook/orca/mutators/LeaveThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->thread_leave_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "leave_thread"

    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/mutators/LeaveThreadActivity;->k()V

    .line 88
    return-void
.end method
