.class final Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "ExplicitOrderedImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:[Ljava/lang/Object;

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 71
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    .line 72
    iput p3, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    .line 73
    iput p4, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    .line 74
    return-void
.end method

.method private a(II)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    if-ge p1, p2, :cond_0

    .line 181
    new-instance v0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    if-gt v1, v2, :cond_1

    .line 170
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    if-lt v1, v2, :cond_2

    .line 172
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private h()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ExplicitOrdering;

    .line 80
    iget-object v0, v0, Lcom/google/common/collect/ExplicitOrdering;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->a(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->a([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    :goto_0
    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->e:I

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 111
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v0

    .line 117
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 118
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->d:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/Platform;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 123
    return-object p1

    .line 119
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 120
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
