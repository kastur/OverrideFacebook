.class Lcom/google/common/collect/Sets$TransformedSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/collect/Sets$InvertibleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/Sets$InvertibleFunction;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TA;>;",
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1197
    iput-object p1, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    .line 1198
    iput-object p2, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    .line 1199
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1248
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1211
    .line 1212
    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Sets$InvertibleFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1243
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$TransformedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Sets$TransformedSet;->b:Lcom/google/common/collect/Sets$InvertibleFunction;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Sets$InvertibleFunction;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/common/collect/Sets$TransformedSet;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
