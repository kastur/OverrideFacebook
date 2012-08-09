.class Lcom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/LinkedListMultimap$Node",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private synthetic c:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private a()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->e(Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 296
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
