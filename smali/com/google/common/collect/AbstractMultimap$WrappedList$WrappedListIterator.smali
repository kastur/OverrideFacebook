.class Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/AbstractMultimap$WrappedList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    .line 805
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 806
    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->isEmpty()Z

    move-result v0

    .line 840
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 841
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$WrappedList;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->c(Lcom/google/common/collect/AbstractMultimap;)I

    .line 842
    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->a:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->d()V

    .line 845
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 835
    return-void
.end method
