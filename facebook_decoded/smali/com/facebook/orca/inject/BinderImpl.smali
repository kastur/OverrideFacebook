.class public Lcom/facebook/orca/inject/BinderImpl;
.super Ljava/lang/Object;
.source "BinderImpl.java"

# interfaces
.implements Lcom/facebook/orca/inject/Binder;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Binding;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/orca/inject/MultiBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->a:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->b:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->c:Ljava/util/List;

    .line 28
    return-void
.end method

.method private c(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/Binding;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/orca/inject/Binding;

    invoke-direct {v0}, Lcom/facebook/orca/inject/Binding;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/Binding;->a(Lcom/google/inject/Key;)V

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/inject/BinderImpl;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v0
.end method

.method private d(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/MultiBinding;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/facebook/orca/inject/MultiBinding;

    invoke-direct {v0, p1}, Lcom/facebook/orca/inject/MultiBinding;-><init>(Lcom/google/inject/Key;)V

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/inject/BinderImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/BinderImpl;->c(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/Binding;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v1
.end method

.method public final a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/BinderImpl;->c(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/Binding;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/orca/inject/Binding;)V

    return-object v1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/inject/Module;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/BinderImpl;->d(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/BinderImpl;->d(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/orca/inject/MultiBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/inject/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/inject/BinderImpl;->c:Ljava/util/List;

    return-object v0
.end method
