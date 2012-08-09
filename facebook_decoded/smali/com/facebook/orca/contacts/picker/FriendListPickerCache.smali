.class public Lcom/facebook/orca/contacts/picker/FriendListPickerCache;
.super Ljava/lang/Object;
.source "FriendListPickerCache.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:Lcom/facebook/orca/common/util/Clock;

.field private e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private j:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;)V
    .locals 4
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a:J

    .line 17
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b:J

    .line 18
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c:J

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    .line 33
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 77
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/google/common/collect/ImmutableList;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 82
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:Lcom/google/common/collect/ImmutableList;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 87
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:Lcom/google/common/collect/ImmutableList;

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method final declared-synchronized a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d()V

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/google/common/collect/ImmutableList;

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d()V

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:Lcom/google/common/collect/ImmutableList;

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/google/common/collect/ImmutableList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:Lcom/google/common/collect/ImmutableList;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:Lcom/google/common/collect/ImmutableList;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:J

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:Lcom/google/common/collect/ImmutableList;

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
