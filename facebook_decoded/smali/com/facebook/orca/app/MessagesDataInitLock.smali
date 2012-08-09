.class public Lcom/facebook/orca/app/MessagesDataInitLock;
.super Ljava/lang/Object;
.source "MessagesDataInitLock.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/MessagesDataInitLock$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->b:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/MessagesDataInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesDataInitLock;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/app/MessagesDataInitLock$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/MessagesDataInitLock$1;-><init>(Lcom/facebook/orca/app/MessagesDataInitLock;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->b:Ljava/util/Set;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->b:Ljava/util/Set;

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/MessagesDataInitLock$Listener;

    .line 100
    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock$Listener;->a()V

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->c:Z

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesDataInitLock;->c()V

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_0
    monitor-exit p0

    return-void
.end method
