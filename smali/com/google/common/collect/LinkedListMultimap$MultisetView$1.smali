.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 667
    return-void
.end method
