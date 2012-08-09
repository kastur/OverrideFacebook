.class Lcom/facebook/orca/common/async/DeferredAggregator$2;
.super Ljava/lang/Object;
.source "DeferredAggregator.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/async/DeferredAggregator;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/DeferredAggregator;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/common/async/DeferredAggregator$2;->a:Lcom/facebook/orca/common/async/DeferredAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator$2;->a:Lcom/facebook/orca/common/async/DeferredAggregator;

    invoke-static {v0}, Lcom/facebook/orca/common/async/DeferredAggregator;->a(Lcom/facebook/orca/common/async/DeferredAggregator;)V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
