.class public Lcom/facebook/orca/common/util/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/util/Clock;

.field private final b:I

.field private final c:J

.field private d:D

.field private e:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/common/util/RateLimiter;->a:Lcom/facebook/orca/common/util/Clock;

    .line 32
    iput p2, p0, Lcom/facebook/orca/common/util/RateLimiter;->b:I

    .line 33
    iput-wide p3, p0, Lcom/facebook/orca/common/util/RateLimiter;->c:J

    .line 34
    int-to-double v0, p2

    iput-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    .line 35
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->a:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/facebook/orca/common/util/RateLimiter;->e:J

    sub-long v2, v0, v2

    .line 45
    iput-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->e:J

    .line 46
    iget-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    long-to-double v2, v2

    iget v4, p0, Lcom/facebook/orca/common/util/RateLimiter;->b:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/facebook/orca/common/util/RateLimiter;->c:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    .line 47
    iget-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    iget v2, p0, Lcom/facebook/orca/common/util/RateLimiter;->b:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    iget v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_0
    monitor-exit p0

    return v0

    .line 53
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D

    sub-double/2addr v0, v8

    iput-wide v0, p0, Lcom/facebook/orca/common/util/RateLimiter;->d:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
