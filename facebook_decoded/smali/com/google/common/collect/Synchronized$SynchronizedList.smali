.class Lcom/google/common/collect/Synchronized$SynchronizedList;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
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
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    .line 307
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->d()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 317
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 380
    if-ne p1, p0, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
