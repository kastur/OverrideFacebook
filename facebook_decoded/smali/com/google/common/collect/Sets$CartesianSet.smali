.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Sets$CartesianSet",
            "<TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method private a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 881
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 909
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 922
    :goto_0
    return v0

    .line 912
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 913
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 914
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 915
    goto :goto_0

    :cond_1
    move v2, v1

    .line 917
    :goto_1
    if-ge v2, v3, :cond_3

    .line 918
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 919
    goto :goto_0

    .line 917
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 922
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 928
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 929
    check-cast p1, Lcom/google/common/collect/Sets$CartesianSet;

    .line 930
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 932
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 940
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 941
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 942
    mul-int/lit8 v1, v1, 0x1f

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/google/common/collect/Sets$CartesianSet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->b:I

    return v0
.end method
