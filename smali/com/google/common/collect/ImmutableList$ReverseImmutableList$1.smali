.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/UnmodifiableListIterator;

.field private synthetic b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/UnmodifiableListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v1}, Lcom/google/common/collect/UnmodifiableListIterator;->previousIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->a:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v1}, Lcom/google/common/collect/UnmodifiableListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->a(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method
