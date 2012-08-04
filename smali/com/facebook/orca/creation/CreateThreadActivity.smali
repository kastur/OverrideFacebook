.class public Lcom/facebook/orca/creation/CreateThreadActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "CreateThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Landroid/support/v4/app/FragmentManager;

.field private f:Lcom/facebook/orca/cache/SendMessageManager;

.field private g:Lcom/facebook/orca/cache/DataCache;

.field private h:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

.field private i:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

.field private j:Lcom/facebook/orca/compose/LocationNuxController;

.field private k:Lcom/facebook/orca/compose/LocationNuxView;

.field private l:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private m:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private n:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

.field private p:Lcom/facebook/orca/compose/ComposeFragment;

.field private q:Lcom/facebook/orca/threads/Message;

.field private r:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    const-string v0, "orca:CreateThreadActivity"

    const-string v1, "onContactPickerFocusChanged"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 250
    :goto_0
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->t()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->g()V

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment;->t()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 255
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h()V

    goto :goto_1

    .line 258
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->k()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 406
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->send_failed_error:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 410
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 357
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->j()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->f:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 377
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 381
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 394
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 395
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Ljava/lang/String;)V

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    sget v0, Lcom/facebook/orca/R$anim;->activity_close_enter:I

    sget v1, Lcom/facebook/orca/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->overridePendingTransition(II)V

    .line 403
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Z

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->i:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Z

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->h:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Z

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->i:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Z

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->h:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->create_thread_no_recipients:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->send_empty_message:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->E()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/threads/Message;

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/LocationNuxController;->a()V

    .line 311
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 314
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 315
    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 317
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v3, v4, :cond_4

    .line 318
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 325
    :goto_1
    if-eqz v0, :cond_6

    .line 326
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->g:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_5

    .line 329
    invoke-direct {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    if-nez v0, :cond_7

    .line 320
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    goto :goto_1

    .line 331
    :cond_5
    new-instance v1, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 335
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 340
    :cond_6
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->j()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private j()V
    .locals 4

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/orca/server/CreateThreadParams;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/threads/Message;

    iget-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/server/CreateThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    .line 347
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 348
    const-string v2, "createThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "create_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 350
    return-void
.end method

.method private k()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->j()V

    .line 388
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 92
    sget v0, Lcom/facebook/orca/R$layout;->orca_create_thread:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 95
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->e:Landroid/support/v4/app/FragmentManager;

    .line 96
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->f:Lcom/facebook/orca/cache/SendMessageManager;

    .line 97
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->g:Lcom/facebook/orca/cache/DataCache;

    .line 99
    sget v0, Lcom/facebook/orca/R$id;->create_thread_overlay_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->h:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 100
    sget v0, Lcom/facebook/orca/R$id;->compose_location_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Lcom/facebook/orca/compose/LocationNuxView;

    .line 101
    sget v0, Lcom/facebook/orca/R$id;->compose_location_disabled_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationDisabledNuxView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->l:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 102
    sget v0, Lcom/facebook/orca/R$id;->create_thread_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->i:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    .line 104
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 106
    new-instance v3, Lcom/facebook/orca/compose/LocationNuxController;

    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct {v3, v0}, Lcom/facebook/orca/compose/LocationNuxController;-><init>(Lcom/facebook/orca/prefs/UiCounters;)V

    iput-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Lcom/facebook/orca/compose/LocationNuxView;

    iget-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->l:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 111
    if-nez p1, :cond_3

    .line 112
    const-string v0, "to"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 113
    instance-of v1, v0, Lcom/facebook/orca/users/UserWithIdentifier;

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Lcom/facebook/orca/users/PickedUser;

    check-cast v0, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$1;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 128
    const-string v0, "fetchCanonicalThread"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$2;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v4, Lcom/facebook/orca/R$string;->create_thread_progress:I

    invoke-direct {v2, p0, v4}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 145
    const-string v0, "createThreadUiOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$3;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v4, Lcom/facebook/orca/R$string;->create_thread_progress:I

    invoke-direct {v2, p0, v4}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->e:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/facebook/orca/R$id;->create_thread_contact_picker:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->e:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/facebook/orca/R$id;->create_thread_compose:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->j:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$4;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V

    .line 173
    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 177
    :cond_0
    const-string v0, "for_sharing"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/content/Intent;)V

    .line 179
    const-string v0, "for_sharing"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 181
    :cond_1
    return-void

    .line 115
    :cond_2
    instance-of v1, v0, Lcom/facebook/orca/users/PickedUser;

    if-eqz v1, :cond_3

    .line 116
    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "create_thread"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 244
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    sget v1, Lcom/facebook/orca/R$string;->compose_discard_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    sget v1, Lcom/facebook/orca/R$string;->compose_discard_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 227
    sget v1, Lcom/facebook/orca/R$string;->compose_discard_dialog_no_button:I

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$5;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    sget v1, Lcom/facebook/orca/R$string;->compose_discard_dialog_discard_button:I

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$6;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$6;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "composeExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h()V

    .line 211
    :cond_0
    const-string v0, "outgoingMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/threads/Message;

    .line 212
    const-string v0, "pickedUsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1

    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 214
    check-cast v0, [Lcom/facebook/orca/users/PickedUser;

    .line 215
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    .line 217
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    const-string v1, "focus_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "focus_compose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h()V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 192
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    const-string v0, "composeExpanded"

    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "outgoingMessage"

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/threads/Message;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/orca/users/PickedUser;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/users/PickedUser;

    .line 201
    const-string v1, "pickedUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 203
    :cond_0
    return-void
.end method
