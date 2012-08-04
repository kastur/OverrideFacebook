.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->b:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->b:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
