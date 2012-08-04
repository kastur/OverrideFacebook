.class public Lcom/facebook/orca/common/async/DeferredAggregator;
.super Ljava/lang/Object;
.source "DeferredAggregator.java"


# instance fields
.field private a:Lcom/facebook/orca/common/async/Deferred;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->d:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->d:Z

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->a:Lcom/facebook/orca/common/async/Deferred;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->d:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->c:I

    .line 63
    iget v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->c:I

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->d:Z

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->a:Lcom/facebook/orca/common/async/Deferred;

    iget-object v1, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/DeferredAggregator;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/orca/common/async/DeferredAggregator;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/DeferredAggregator;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/async/DeferredAggregator;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/facebook/orca/common/async/Deferred;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/async/Deferred;",
            ">;)",
            "Lcom/facebook/orca/common/async/Deferred;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->b:Ljava/util/List;

    move v0, v1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->c:I

    .line 36
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    .line 39
    new-instance v2, Lcom/facebook/orca/common/async/DeferredAggregator$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/common/async/DeferredAggregator$1;-><init>(Lcom/facebook/orca/common/async/DeferredAggregator;I)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 46
    new-instance v2, Lcom/facebook/orca/common/async/DeferredAggregator$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/async/DeferredAggregator$2;-><init>(Lcom/facebook/orca/common/async/DeferredAggregator;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/async/DeferredAggregator;->a:Lcom/facebook/orca/common/async/Deferred;

    return-object v0
.end method
