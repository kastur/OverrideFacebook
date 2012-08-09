.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static n:Z

.field private static o:Z


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/app/AlarmManager;

.field private final f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final h:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final i:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

.field private final j:Z

.field private k:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    sput-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:J

    .line 32
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:J

    .line 33
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    sput-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:J

    .line 54
    sput-boolean v4, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->n:Z

    .line 55
    sput-boolean v4, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->o:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 66
    iput-object p4, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Landroid/app/AlarmManager;

    .line 68
    iput-object p5, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 69
    iput-boolean p6, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:Z

    .line 70
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    iput-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    .line 72
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h()V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    if-eqz p1, :cond_2

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 151
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    add-long/2addr v1, v3

    .line 154
    iget-object v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z

    return v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, -0x1

    .line 164
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-wide v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    .line 178
    :cond_2
    iget-wide v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 183
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbUserPropertyKey;

    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    sget-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 199
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    sget-wide v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    const-wide/16 v0, 0x2

    :try_start_1
    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "sync_address_book"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Z)V

    .line 97
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Z)V

    .line 105
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:J

    .line 205
    return-void
.end method

.method final declared-synchronized e()V
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
