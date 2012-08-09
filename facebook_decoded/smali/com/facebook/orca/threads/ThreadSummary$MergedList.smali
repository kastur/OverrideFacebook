.class Lcom/facebook/orca/threads/ThreadSummary$MergedList;
.super Ljava/util/AbstractList;
.source "ThreadSummary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/facebook/orca/threads/ThreadParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a:Lcom/google/common/collect/ImmutableList;

    .line 259
    iput-object p2, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->b:Lcom/google/common/collect/ImmutableList;

    .line 260
    return-void
.end method

.method private a(I)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    goto :goto_0
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a(I)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
