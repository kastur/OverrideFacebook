.class public Lcom/facebook/orca/inject/MultiBinding;
.super Ljava/lang/Object;
.source "MultiBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/MultiBinding;->a:Ljava/util/Set;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinding;->a:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    return-object p0
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinding;->a:Ljava/util/Set;

    return-object v0
.end method
