.class final Lcom/google/common/collect/Iterators$4;
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
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private synthetic c:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/common/collect/Iterators$4;->c:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    invoke-static {}, Lcom/google/common/collect/Iterators;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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
    .line 397
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->b:Ljava/util/Iterator;

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->b:Ljava/util/Iterator;

    .line 409
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
