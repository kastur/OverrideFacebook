.class public Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;
.super Ljava/lang/Object;
.source "OrcaWakeLockManager.java"


# instance fields
.field private final a:Landroid/os/PowerManager$WakeLock;

.field private b:I

.field private c:J

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/OrcaWakeLockManager;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a:Landroid/os/PowerManager$WakeLock;

    .line 61
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->c()V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 67
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    .line 68
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    if-nez v0, :cond_1

    .line 79
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    .line 84
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:I

    if-nez v0, :cond_0

    .line 85
    iget-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
