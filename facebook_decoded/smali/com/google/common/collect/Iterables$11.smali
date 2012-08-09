.class final Lcom/google/common/collect/Iterables$11;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Iterable;

.field private synthetic b:I


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 812
    iget v1, p0, Lcom/google/common/collect/Iterables$11;->b:I

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->c(Ljava/util/Iterator;I)I

    .line 819
    new-instance v1, Lcom/google/common/collect/Iterables$11$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$11$1;-><init>(Lcom/google/common/collect/Iterables$11;Ljava/util/Iterator;)V

    return-object v1
.end method
