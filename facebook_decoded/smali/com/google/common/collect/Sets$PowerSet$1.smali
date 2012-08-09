.class Lcom/google/common/collect/Sets$PowerSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Sets$PowerSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$PowerSet;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$1;->a:Lcom/google/common/collect/Sets$PowerSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method

.method private b(I)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$PowerSet$1$1;-><init>(Lcom/google/common/collect/Sets$PowerSet$1;I)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$PowerSet$1;->b(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
