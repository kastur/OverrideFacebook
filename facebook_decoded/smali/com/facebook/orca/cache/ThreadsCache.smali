.class public Lcom/facebook/orca/cache/ThreadsCache;
.super Ljava/lang/Object;
.source "ThreadsCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final b:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final c:Lcom/facebook/orca/threads/ThreadSummaryStitching;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            "Lcom/facebook/orca/cache/FolderCacheData;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadLocalState;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/threads/ThreadSummaryStitching;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadsCache;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 73
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 74
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    .line 79
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 473
    if-nez p2, :cond_0

    .line 474
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object p2

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/Set;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/orca/threads/MessagesCollection;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 327
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 331
    :cond_1
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v3, 0x5

    .line 485
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    const-string v1, "Merged messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, "  New Message:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 494
    const-string v1, "  Recent Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {v0, p2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 497
    const-string v1, "  Loaded Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {v0, p3, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 500
    const-string v1, "  Result:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/16 v1, 0x8

    invoke-static {v0, p4, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 502
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, "orca:ThreadsCache"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 187
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/FolderCacheData;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    :cond_0
    const-string v0, "    none\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_1
    return-void

    .line 522
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 523
    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 524
    const-string v2, "   "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 274
    if-nez p1, :cond_1

    if-nez p0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-direct {p0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v3

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 433
    if-nez v0, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V

    .line 435
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/MessagesCollection;

    .line 441
    if-nez v1, :cond_5

    .line 442
    new-instance v1, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 443
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V

    .line 444
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 452
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-static {p2, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 454
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V

    .line 455
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 458
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 459
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 460
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/orca/threads/ThreadSummaryStitching;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 462
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 463
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 445
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V

    .line 447
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_1
.end method

.method private declared-synchronized b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 218
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->c(J)V

    .line 220
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 507
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    const-string v1, "  Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 514
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, "orca:ThreadsCache"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized c(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/FolderCacheData;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private d(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 670
    new-instance v0, Lcom/facebook/orca/cache/NameComputer;

    invoke-direct {v0}, Lcom/facebook/orca/cache/NameComputer;-><init>()V

    .line 671
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 672
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/NameComputer;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 673
    return-void
.end method

.method private e(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v1

    .line 558
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 559
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 561
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Ljava/util/Collection;)V

    .line 569
    return-void
.end method

.method private declared-synchronized f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;
    .locals 2
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/orca/cache/FolderCacheData;

    invoke-direct {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;-><init>(Lcom/facebook/orca/threads/FolderName;)V

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;
    .locals 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 532
    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/facebook/orca/cache/ThreadLocalState;

    invoke-direct {v0, p1}, Lcom/facebook/orca/cache/ThreadLocalState;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_0
    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 123
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 652
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 654
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->i()Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 573
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 417
    return-void
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 178
    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 179
    invoke-direct {p0, v0, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;JZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/facebook/orca/cache/FolderCacheData;->g()V

    .line 146
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 147
    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 148
    invoke-direct {p0, v0, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->b(Z)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->c(Z)V

    .line 152
    invoke-virtual {v1, p3, p4}, Lcom/facebook/orca/cache/FolderCacheData;->a(J)V

    .line 154
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 155
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 156
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 264
    if-nez v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V

    .line 270
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 267
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 196
    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Landroid/location/Location;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Landroid/location/Location;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-nez v0, :cond_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-static {v0, p2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/Set;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 625
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 629
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v3, v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->a(Lcom/facebook/orca/users/User;)V

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 638
    return-void
.end method

.method final a(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->c()Z

    move-result v0

    return v0
.end method

.method final declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 378
    :goto_0
    monitor-exit p0

    return v0

    .line 374
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 375
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 376
    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gt p2, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;
    .locals 1
    .parameter

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    goto :goto_0
.end method

.method final b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 661
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 544
    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 547
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 548
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 549
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 550
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 551
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->d()Z

    move-result v0

    return v0
.end method

.method final declared-synchronized c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 3
    .parameter

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->a()Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->b()Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 305
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 1
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->f()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized d(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 346
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 359
    :goto_0
    monitor-exit p0

    return v0

    .line 349
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 350
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSummary;

    .line 351
    if-nez v0, :cond_1

    move v0, v2

    .line 352
    goto :goto_0

    .line 354
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 356
    goto :goto_0

    .line 359
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final e(Lcom/facebook/orca/threads/FolderName;)J
    .locals 2
    .parameter

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method final declared-synchronized e(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->g()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->e()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->d()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
