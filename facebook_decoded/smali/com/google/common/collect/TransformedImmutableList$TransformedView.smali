.class Lcom/google/common/collect/TransformedImmutableList$TransformedView;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->a:Lcom/google/common/collect/TransformedImmutableList;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->a:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->a(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
