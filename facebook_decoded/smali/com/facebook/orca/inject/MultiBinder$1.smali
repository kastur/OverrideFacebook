.class Lcom/facebook/orca/inject/MultiBinder$1;
.super Ljava/lang/Object;
.source "MultiBinder.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/inject/MultiBinder;


# direct methods
.method constructor <init>(Lcom/facebook/orca/inject/MultiBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/orca/inject/MultiBinder$1;->a:Lcom/facebook/orca/inject/MultiBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinder$1;->a:Lcom/facebook/orca/inject/MultiBinder;

    invoke-static {v0}, Lcom/facebook/orca/inject/MultiBinder;->a(Lcom/facebook/orca/inject/MultiBinder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 47
    iget-object v3, p0, Lcom/facebook/orca/inject/MultiBinder$1;->a:Lcom/facebook/orca/inject/MultiBinder;

    invoke-static {v3}, Lcom/facebook/orca/inject/MultiBinder;->b(Lcom/facebook/orca/inject/MultiBinder;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/inject/MultiBinder$1;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
