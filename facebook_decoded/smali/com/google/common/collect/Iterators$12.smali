.class final Lcom/google/common/collect/Iterators$12;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:[Ljava/lang/Object;

.field private synthetic b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    iput-object p2, p0, Lcom/google/common/collect/Iterators$12;->a:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/Iterators$12;->b:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/Iterators$12;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$12;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
