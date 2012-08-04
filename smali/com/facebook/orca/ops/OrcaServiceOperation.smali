.class public Lcom/facebook/orca/ops/OrcaServiceOperation;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

.field private final e:Ljava/lang/Class;

.field private final f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private g:Landroid/os/Handler;

.field private h:Lcom/facebook/orca/server/IOrcaService;

.field private i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

.field private p:Ljava/lang/String;

.field private q:Landroid/os/Bundle;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Lcom/facebook/orca/debug/WtfToken;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 159
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    .line 160
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;B)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    .line 161
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Ljava/lang/Class;

    .line 162
    iput-object p3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 607
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    .line 609
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 611
    const/4 v0, 0x0

    .line 612
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    instance-of v1, v1, Lcom/facebook/orca/activity/FbActivityish;

    if-eqz v1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    .line 614
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityish;->a(Ljava/lang/Exception;)Z

    move-result v0

    .line 617
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Z

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 620
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/ops/ServiceException;)V

    .line 623
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    if-eqz v0, :cond_3

    .line 624
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 626
    :cond_3
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 556
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 575
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private c(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d(Lcom/facebook/orca/server/OperationResult;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v0, p1}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    return v0
.end method

.method private d(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 591
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 595
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Z

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 601
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 604
    :cond_2
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Z

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Z

    .line 405
    :cond_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 398
    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:OrcaServiceOperation"

    const-string v3, "Exception unbinding"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    if-eqz v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Z

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iput-boolean v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Z

    goto :goto_0

    .line 454
    :cond_2
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Bind to OrcaService failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 456
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_5

    .line 468
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Null operation type"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Non-null operation id"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 470
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "Registered for competion and haven\'t yet sent"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    if-nez v0, :cond_4

    .line 479
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.<method> or registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 487
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 502
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 468
    goto :goto_0

    :cond_2
    move v0, v2

    .line 469
    goto :goto_1

    :cond_3
    move v1, v2

    .line 470
    goto :goto_2

    .line 481
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 482
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 489
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_0

    .line 490
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_4
    const-string v0, "null operation id"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 491
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    if-nez v0, :cond_0

    .line 493
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 495
    :catch_1
    move-exception v0

    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 498
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_3

    :cond_6
    move v1, v2

    .line 490
    goto :goto_4
.end method

.method private h()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    .line 539
    :goto_0
    return-void

    .line 534
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 537
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->a()V

    .line 632
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 638
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    .line 170
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    .line 171
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    .line 172
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 173
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 174
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 175
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    const-string v0, "operationState"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 185
    const-string v0, "type"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "param"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v0, "operationId"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 314
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 319
    :cond_3
    return-void
.end method

.method public final a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 275
    return-void
.end method

.method public final a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Incorrect operation state"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Initially operationType should be null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 417
    const-string v0, "non-null operationType"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 420
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    .line 421
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Landroid/os/Bundle;

    .line 423
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Landroid/os/Handler;

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 427
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    .line 428
    return-void

    :cond_1
    move v0, v2

    .line 415
    goto :goto_0

    :cond_2
    move v1, v2

    .line 416
    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Z

    .line 337
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    const-string v0, "operationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 197
    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Landroid/os/Bundle;

    .line 198
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    .line 199
    const-string v0, "operationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    .line 203
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Landroid/os/Handler;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 212
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 217
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    .line 355
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    .line 374
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 381
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 382
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Ljava/lang/String;

    .line 383
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Landroid/os/Bundle;

    .line 384
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Ljava/lang/String;

    .line 385
    iput-boolean v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    .line 386
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    .line 387
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Lcom/facebook/orca/server/IOrcaService;

    .line 388
    return-void

    :cond_1
    move v0, v1

    .line 380
    goto :goto_0
.end method
