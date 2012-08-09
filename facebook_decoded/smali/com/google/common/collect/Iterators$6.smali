.class final Lcom/google/common/collect/Iterators$6;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;

.field private synthetic b:I

.field private synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$6;->b:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$6;->c:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$6;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 603
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Iterators$6;->b:I

    new-array v2, v0, [Ljava/lang/Object;

    move v0, v1

    .line 605
    :goto_0
    iget v3, p0, Lcom/google/common/collect/Iterators$6;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 612
    iget-boolean v3, p0, Lcom/google/common/collect/Iterators$6;->c:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/common/collect/Iterators$6;->b:I

    if-ne v0, v3, :cond_3

    :cond_2
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/common/collect/Iterators$6;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
