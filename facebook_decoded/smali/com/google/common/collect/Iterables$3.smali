.class final Lcom/google/common/collect/Iterables$3;
.super Lcom/google/common/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/common/collect/Iterables$3;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/collect/Iterables$3;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
