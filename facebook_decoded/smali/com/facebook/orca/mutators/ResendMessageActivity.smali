.class public Lcom/facebook/orca/mutators/ResendMessageActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "ResendMessageActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/SendMessageManager;

.field private f:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private g:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private h:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/ResendMessageActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/mutators/ResendMessageActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/ResendMessageActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->k()V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 127
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v1, "deleteMessagesParams"

    new-instance v2, Lcom/facebook/orca/server/DeleteMessagesParams;

    iget-object v3, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/ImmutableSet;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/orca/server/DeleteMessagesParams;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "delete_messages"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->finish()V

    .line 117
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 47
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->e:Lcom/facebook/orca/cache/SendMessageManager;

    .line 48
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->f:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->e:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v2, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/SendMessageManager;->b(Ljava/lang/String;)Lcom/facebook/orca/ops/ServiceException;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->f:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v1}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 64
    sget v2, Lcom/facebook/orca/R$string;->retry_send_heading:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/mutators/ResendMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 66
    sget v0, Lcom/facebook/orca/R$string;->retry_send_positive_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;->DELETE:Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Lcom/facebook/orca/activity/ConfirmActionParams$ButtonStyle;)V

    .line 68
    sget v0, Lcom/facebook/orca/R$string;->retry_send_delete_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/activity/ConfirmActionParams;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/facebook/orca/mutators/ResendMessageActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 71
    const-string v0, "deleteMessagesOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/mutators/ResendMessageActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mutators/ResendMessageActivity$1;-><init>(Lcom/facebook/orca/mutators/ResendMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$plurals;->message_delete_progress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "resend_message"

    return-object v0
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->e:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/mutators/ResendMessageActivity;->h:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/SendMessageManager;->b(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->finish()V

    .line 93
    return-void
.end method

.method protected final h()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/mutators/ResendMessageActivity;->j()V

    .line 98
    return-void
.end method
