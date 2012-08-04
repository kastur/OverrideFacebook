.class public Lcom/facebook/orca/inject/MultiBinder;
.super Ljava/lang/Object;
.source "MultiBinder.java"


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
.field private final a:Lcom/facebook/orca/inject/FbInjector;

.field private final b:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
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
.method public constructor <init>(Lcom/facebook/orca/inject/FbInjector;Lcom/google/inject/Key;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/FbInjector;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/inject/MultiBinder;->a:Lcom/facebook/orca/inject/FbInjector;

    .line 25
    iput-object p2, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    .line 26
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/MultiBinder;->c:Ljava/util/Set;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/inject/MultiBinder;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinder;->c:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/inject/MultiBinder;)Lcom/facebook/orca/inject/FbInjector;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinder;->a:Lcom/facebook/orca/inject/FbInjector;

    return-object v0
.end method


# virtual methods
.method final a()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/orca/inject/MultiBinder$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/inject/MultiBinder$1;-><init>(Lcom/facebook/orca/inject/MultiBinder;)V

    return-object v0
.end method

.method public final a(Lcom/google/inject/Key;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/inject/MultiBinder;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method final b()Lcom/google/inject/Key;
    .locals 6

    .prologue
    .line 55
    new-instance v0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    invoke-virtual {v5}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/inject/TypeLiteral;->b()Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 58
    iget-object v1, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    invoke-virtual {v1}, Lcom/google/inject/Key;->c()Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    invoke-virtual {v1}, Lcom/google/inject/Key;->c()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    invoke-virtual {v1}, Lcom/google/inject/Key;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/facebook/orca/inject/MultiBinder;->b:Lcom/google/inject/Key;

    invoke-virtual {v1}, Lcom/google/inject/Key;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v0}, Lcom/google/inject/Key;->a(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method
