.class public Lcom/facebook/orca/inject/FbInjectorImpl;
.super Lcom/facebook/orca/inject/FbInjector;
.source "FbInjectorImpl.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Ljavax/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/orca/inject/MultiBinder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Ljavax/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/orca/inject/Module;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/inject/FbInjector;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    .line 37
    const-string v0, "FbInjectorImpl.init"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 39
    const-string v0, "FbInjectorImpl.init#modules"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Module;

    .line 41
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/Module;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/inject/FbInjectorImpl;->b()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->e:Z

    .line 51
    const-string v0, "FbInjectorImpl.init#eagerSingletons"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 54
    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 58
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 59
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->e:Z

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Called injector during binding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/inject/Module;)V
    .locals 6
    .parameter

    .prologue
    .line 62
    new-instance v3, Lcom/facebook/orca/inject/BinderImpl;

    invoke-direct {v3}, Lcom/facebook/orca/inject/BinderImpl;-><init>()V

    .line 63
    invoke-interface {p1, v3}, Lcom/facebook/orca/inject/Module;->a(Lcom/facebook/orca/inject/Binder;)V

    .line 64
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Binding;

    .line 65
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->b()Ljavax/inject/Provider;

    move-result-object v2

    .line 66
    instance-of v1, v2, Lcom/facebook/orca/inject/ProviderWithInjector;

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 67
    check-cast v1, Lcom/facebook/orca/inject/ProviderWithInjector;

    invoke-interface {v1, p0}, Lcom/facebook/orca/inject/ProviderWithInjector;->a(Lcom/facebook/orca/inject/FbInjector;)V

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->c()Lcom/facebook/orca/inject/Scope;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->c()Lcom/facebook/orca/inject/Scope;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/Scope;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->a()Lcom/google/inject/Key;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->a()Lcom/google/inject/Key;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/MultiBinding;

    .line 81
    iget-object v2, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/inject/MultiBinder;

    .line 82
    if-nez v2, :cond_5

    .line 83
    new-instance v2, Lcom/facebook/orca/inject/MultiBinder;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/inject/MultiBinder;-><init>(Lcom/facebook/orca/inject/FbInjector;Lcom/google/inject/Key;)V

    .line 84
    iget-object v5, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinding;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 87
    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/MultiBinder;->a(Lcom/google/inject/Key;)V

    goto :goto_1

    .line 91
    :cond_6
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Module;

    .line 92
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/Module;)V

    goto :goto_2

    .line 94
    :cond_7
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/MultiBinder;

    .line 150
    iget-object v2, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinder;->b()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinder;->a()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private c(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/google/inject/Key;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/inject/Key;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 188
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 159
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 163
    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->a()Ljava/lang/Class;

    move-result-object v0

    .line 168
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_4

    .line 170
    const-string v3, "OrcaInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created just-in-time provider for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/facebook/orca/inject/FbInjectorImpl$1;

    invoke-direct {v0, p0, v2}, Lcom/facebook/orca/inject/FbInjectorImpl$1;-><init>(Lcom/facebook/orca/inject/FbInjectorImpl;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 186
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/facebook/orca/inject/FbInjectorImpl;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/facebook/orca/inject/FbInjectorImpl;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a()V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 126
    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 128
    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/FbInjectorImpl;->c(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider bound for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p1, p2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method
