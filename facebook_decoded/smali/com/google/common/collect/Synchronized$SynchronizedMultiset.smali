.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    .line 417
    return-void
.end method

.method private e()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->d()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->b(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 479
    if-ne p1, p0, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final j_()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->j_()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final k_()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->e()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->k_()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c:Ljava/util/Set;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
