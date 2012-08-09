.class final Lcom/google/common/collect/Iterators$9;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private synthetic b:I

.field private synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(ILjava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 908
    iput p1, p0, Lcom/google/common/collect/Iterators$9;->b:I

    iput-object p2, p0, Lcom/google/common/collect/Iterators$9;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 913
    iget v0, p0, Lcom/google/common/collect/Iterators$9;->a:I

    iget v1, p0, Lcom/google/common/collect/Iterators$9;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$9;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$9;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 921
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Iterators$9;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Iterators$9;->a:I

    .line 922
    iget-object v0, p0, Lcom/google/common/collect/Iterators$9;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/common/collect/Iterators$9;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 928
    return-void
.end method
