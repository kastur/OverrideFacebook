.class Lcom/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private synthetic c:Ljava/util/ListIterator;

.field private synthetic d:Lcom/google/common/collect/Lists$ReverseList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->d:Lcom/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 824
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 838
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 839
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->d:Lcom/google/common/collect/Lists$ReverseList;

    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists$ReverseList;->a(Lcom/google/common/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 850
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 851
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 860
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    .line 862
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 866
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 867
    return-void
.end method
