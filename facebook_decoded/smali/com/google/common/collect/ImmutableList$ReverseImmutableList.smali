.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    .line 423
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    .line 424
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->b(I)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 427
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private c(I)I
    .locals 1
    .parameter

    .prologue
    .line 431
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final a(II)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 457
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 458
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 468
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 469
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    .line 471
    new-instance v1, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;-><init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/UnmodifiableListIterator;)V

    return-object v1
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

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
    .line 443
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
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
    .line 463
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 464
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

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
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 448
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->b(I)I

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
    .line 503
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/UnmodifiableIterator;

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
    .line 452
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 453
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->l_()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->c:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
