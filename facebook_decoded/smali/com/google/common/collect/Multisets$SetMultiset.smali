.class Lcom/google/common/collect/Multisets$SetMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    .line 202
    return-void
.end method

.method private d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    if-nez p2, :cond_1

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->a(Ljava/lang/Object;)I

    move-result v1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 223
    goto :goto_1
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 271
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    .line 272
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->j_()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 275
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 281
    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 283
    :cond_1
    return v0
.end method

.method public final j_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->b:Ljava/util/Set;

    .line 232
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final k_()Ljava/util/Set;
    .locals 1
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
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->c:Ljava/util/Set;

    .line 240
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
