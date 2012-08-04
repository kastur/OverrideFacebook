.class public Lcom/facebook/orca/threads/ThreadsCollectionMerger;
.super Ljava/lang/Object;
.source "ThreadsCollectionMerger.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/common/collect/PeekingIterator",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadsCollectionMerger$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Lcom/facebook/orca/threads/ThreadsCollection;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 108
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    :goto_1
    return v0

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final varargs a(I[Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 66
    array-length v1, p2

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p2, v0

    .line 67
    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Iterators;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    .line 69
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    move v1, v2

    .line 79
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge v1, p1, :cond_4

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/PeekingIterator;

    .line 81
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v5, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a:Ljava/util/Comparator;

    invoke-static {v3, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 86
    if-gez v5, :cond_3

    .line 87
    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 102
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    return-object v1

    .line 98
    :cond_6
    invoke-static {p2}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a([Lcom/facebook/orca/threads/ThreadsCollection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const/4 v2, 0x1

    goto :goto_2
.end method
