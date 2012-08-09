.class Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
