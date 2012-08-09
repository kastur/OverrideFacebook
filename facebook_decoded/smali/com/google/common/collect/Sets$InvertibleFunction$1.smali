.class Lcom/google/common/collect/Sets$InvertibleFunction$1;
.super Lcom/google/common/collect/Sets$InvertibleFunction;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$InvertibleFunction",
        "<TB;TA;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/Sets$InvertibleFunction;


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/common/collect/Sets$InvertibleFunction$1;->a:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/common/collect/Sets$InvertibleFunction$1;->a:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
