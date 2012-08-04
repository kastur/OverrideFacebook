.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/lang/Object;

    .line 407
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    .line 408
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 409
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Ljava/util/Collection;

    .line 411
    return-void

    .line 409
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 424
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 428
    if-eqz v0, :cond_1

    .line 429
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    .line 432
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 550
    if-eqz v1, :cond_0

    .line 551
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 552
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    .line 556
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 566
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 570
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 573
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 574
    if-nez v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 597
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 598
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 588
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method final d()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d()V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 471
    if-ne p1, p0, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 475
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final f()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->d:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 480
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 494
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 603
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;)I

    .line 606
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 608
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 612
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x0

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v1

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 619
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 620
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 629
    if-eqz v1, :cond_0

    .line 630
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b:Lcom/google/common/collect/AbstractMultimap;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 632
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->b()V

    .line 634
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 467
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a()V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
