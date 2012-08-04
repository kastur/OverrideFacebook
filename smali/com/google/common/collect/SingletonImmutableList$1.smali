.class Lcom/google/common/collect/SingletonImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:I

.field private synthetic c:Lcom/google/common/collect/SingletonImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SingletonImmutableList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableList$1;->c:Lcom/google/common/collect/SingletonImmutableList;

    iput p2, p0, Lcom/google/common/collect/SingletonImmutableList$1;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 66
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->c:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->c:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
