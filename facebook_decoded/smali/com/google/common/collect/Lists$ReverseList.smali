.class Lcom/google/common/collect/Lists$ReverseList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 733
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    .line 734
    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 742
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 743
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/Lists$ReverseList;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->b(I)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 748
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 749
    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->b(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 754
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 758
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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
    .line 789
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 800
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Lists$ReverseList;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 805
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Lists$ReverseList;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->b(I)I

    move-result v0

    .line 814
    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 815
    new-instance v1, Lcom/google/common/collect/Lists$ReverseList$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Lists$ReverseList$1;-><init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$ReverseList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->a(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 794
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Lists$ReverseList;->b(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
