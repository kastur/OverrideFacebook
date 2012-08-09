.class public Lcom/facebook/orca/mutators/DeleteMessagesActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "DeleteMessagesActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/DeleteMessagesActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/DeleteMessagesActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->k()V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 112
    return-void
.end method

.method private b(I)Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 3
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    sget v2, Lcom/facebook/orca/R$plurals;->message_delete_confirm_title:I

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 43
    sget v2, Lcom/facebook/orca/R$plurals;->message_delete_confirm_msg:I

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 44
    sget v2, Lcom/facebook/orca/R$plurals;->message_delete_confirm_ok_button:I

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;->DELETE:Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;)V

    .line 47
    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v1, "deleteMessagesParams"

    new-instance v2, Lcom/facebook/orca/server/DeleteMessagesParams;

    iget-object v3, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->g:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v2, v3, v4}, Lcom/facebook/orca/server/DeleteMessagesParams;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "delete_messages"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->finish()V

    .line 102
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->f:Ljava/lang/String;

    .line 57
    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->g:Lcom/google/common/collect/ImmutableSet;

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->g:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    .line 59
    invoke-direct {p0, v0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->b(I)Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 61
    const-string v1, "deleteMessagesOperation"

    invoke-static {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 62
    iget-object v1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;-><init>(Lcom/facebook/orca/mutators/DeleteMessagesActivity;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$plurals;->message_delete_progress:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 78
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "delete_messages"

    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->j()V

    .line 83
    return-void
.end method
