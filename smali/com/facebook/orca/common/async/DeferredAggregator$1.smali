.class Lcom/facebook/orca/common/async/DeferredAggregator$1;
.super Ljava/lang/Object;
.source "DeferredAggregator.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/facebook/orca/common/async/DeferredAggregator;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/DeferredAggregator;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/common/async/DeferredAggregator$1;->b:Lcom/facebook/orca/common/async/DeferredAggregator;

    iput p2, p0, Lcom/facebook/orca/common/async/DeferredAggregator$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator$1;->b:Lcom/facebook/orca/common/async/DeferredAggregator;

    iget v1, p0, Lcom/facebook/orca/common/async/DeferredAggregator$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/common/async/DeferredAggregator;->a(Lcom/facebook/orca/common/async/DeferredAggregator;ILjava/lang/Object;)V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
