.class public Lcom/facebook/orca/mutators/DeleteThreadActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "DeleteThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private g:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/DeleteThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/DeleteThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->l()V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 113
    return-void
.end method

.method private j()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 37
    sget v1, Lcom/facebook/orca/R$string;->thread_delete_confirm_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 38
    sget v1, Lcom/facebook/orca/R$string;->thread_delete_confirm_msg:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 39
    sget v1, Lcom/facebook/orca/R$string;->thread_delete_confirm_ok_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;->DELETE:Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;)V

    .line 41
    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "deleteThreadParams"

    new-instance v2, Lcom/facebook/orca/server/DeleteThreadParams;

    iget-object v3, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "delete_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->finish()V

    .line 103
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
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 54
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->g:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->j()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 67
    const-string v0, "deleteThreadOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/mutators/DeleteThreadActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity$1;-><init>(Lcom/facebook/orca/mutators/DeleteThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity;->f:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->thread_delete_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "delete_thread"

    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->k()V

    .line 86
    return-void
.end method
