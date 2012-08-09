.class final Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1067
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->a:Lcom/google/common/collect/ImmutableList;

    .line 1068
    iput p2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->b:I

    .line 1069
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1076
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1077
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1078
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1081
    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1082
    iget v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->b:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->b:I

    .line 1083
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
