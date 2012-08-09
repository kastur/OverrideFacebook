.class Lcom/google/common/collect/Sets$CartesianSet$Axis;
.super Ljava/lang/Object;
.source "Sets.java"


# instance fields
.field private a:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<+TB;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+TB;>;"
        }
    .end annotation
.end field

.field private c:I

.field private synthetic d:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method private a()I
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method final a(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->b:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->c:I

    div-int v1, p1, v1

    invoke-direct {p0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 972
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    if-eqz v0, :cond_0

    .line 973
    check-cast p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    .line 974
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    iget-object v1, p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->d:Lcom/google/common/collect/Sets$CartesianSet;

    iget v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->b:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
