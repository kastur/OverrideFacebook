.class final Lcom/google/common/collect/Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:I


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1088
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1089
    check-cast p1, Ljava/util/Set;

    .line 1090
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 1092
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1096
    instance-of v0, p1, Lcom/google/common/collect/Sets$PowerSet;

    if-eqz v0, :cond_0

    .line 1097
    check-cast p1, Lcom/google/common/collect/Sets$PowerSet;

    .line 1098
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    iget-object v1, p1, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1047
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1;

    iget v1, p0, Lcom/google/common/collect/Sets$PowerSet;->c:I

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$PowerSet$1;-><init>(Lcom/google/common/collect/Sets$PowerSet;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "powerSet("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
