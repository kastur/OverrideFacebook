.class final Lcom/google/common/collect/EvictionListeners$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Lcom/google/common/collect/MapEvictionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapEvictionListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapEvictionListener;

.field private synthetic b:Ljava/util/concurrent/Executor;


# virtual methods
.method public final onEviction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/EvictionListeners$1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/collect/EvictionListeners$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/collect/EvictionListeners$1$1;-><init>(Lcom/google/common/collect/EvictionListeners$1;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
