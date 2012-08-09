.class Lcom/google/common/collect/EvictionListeners$1$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/google/common/collect/EvictionListeners$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EvictionListeners$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/common/collect/EvictionListeners$1$1;->c:Lcom/google/common/collect/EvictionListeners$1;

    iput-object p2, p0, Lcom/google/common/collect/EvictionListeners$1$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/EvictionListeners$1$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/EvictionListeners$1$1;->c:Lcom/google/common/collect/EvictionListeners$1;

    iget-object v0, v0, Lcom/google/common/collect/EvictionListeners$1;->a:Lcom/google/common/collect/MapEvictionListener;

    iget-object v1, p0, Lcom/google/common/collect/EvictionListeners$1$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/EvictionListeners$1$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/MapEvictionListener;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
