.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljava/lang/Integer;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 495
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->k_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 189
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v3

    .line 190
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    if-nez p2, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 227
    :goto_0
    return v2

    .line 213
    :cond_0
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v3

    .line 217
    if-nez v3, :cond_3

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 213
    goto :goto_1

    .line 222
    :cond_3
    const v0, 0x7fffffff

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_4

    move v0, v1

    :goto_2
    const-string v4, "Overflow adding %s occurrences to a count of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 225
    add-int v0, v3, p2

    .line 226
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 227
    goto :goto_0

    :cond_4
    move v0, v2

    .line 222
    goto :goto_2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-nez p2, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 265
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    if-lez p2, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "Invalid occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    .line 255
    if-lt p2, v0, :cond_4

    .line 256
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 257
    goto :goto_0

    :cond_3
    move v0, v2

    .line 248
    goto :goto_1

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 265
    goto :goto_0
.end method

.method final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->clear()V

    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->j_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k_()Ljava/util/Set;
    .locals 2
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
    .line 395
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 396
    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;B)V

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 399
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 6

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    .line 163
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 166
    :cond_0
    long-to-int v0, v1

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
