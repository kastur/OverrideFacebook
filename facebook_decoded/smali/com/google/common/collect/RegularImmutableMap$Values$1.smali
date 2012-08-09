.class Lcom/google/common/collect/RegularImmutableMap$Values$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/RegularImmutableMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap$Values;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values$1;->a:Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values$1;->a:Lcom/google/common/collect/RegularImmutableMap$Values;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap$Values;->a:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
