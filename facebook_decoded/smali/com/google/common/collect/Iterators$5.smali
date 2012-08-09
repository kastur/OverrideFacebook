.class final Lcom/google/common/collect/Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    invoke-static {}, Lcom/google/common/collect/Iterators;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 525
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->a:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->a:Ljava/util/Iterator;

    goto :goto_0

    .line 528
    :cond_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->a:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->b:Ljava/util/Iterator;

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->b:Ljava/util/Iterator;

    .line 544
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
