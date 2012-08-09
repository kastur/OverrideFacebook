.class final Lcom/google/common/collect/Iterators$11;
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


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 980
    iput-object p2, p0, Lcom/google/common/collect/Iterators$11;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/common/collect/Iterators$11;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
