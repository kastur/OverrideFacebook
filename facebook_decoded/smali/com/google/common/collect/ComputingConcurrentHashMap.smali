.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/CustomConcurrentHashMap;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMaker$Cache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 51
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->a:Lcom/google/common/base/Function;

    .line 52
    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ComputingConcurrentHashMap",
            "<TK;TV;>.ComputingSegment;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object v0
.end method

.method final a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lcom/google/common/collect/ComputingConcurrentHashMap;II)V

    return-object v0
.end method

.method public final a()Ljava/util/concurrent/ConcurrentMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->a(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->a(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method
