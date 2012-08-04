.class Lcom/google/common/collect/RegularImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList$1;->a:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->a:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableList;->a(Lcom/google/common/collect/RegularImmutableList;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->a:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->b(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
