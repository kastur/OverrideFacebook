.class Lcom/google/common/collect/LinkedListMultimap$4$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/LinkedListMultimap$Node;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 842
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->b:Ljava/lang/Object;

    .line 851
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->a:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->b:Ljava/lang/Object;

    .line 852
    return-object v0
.end method
