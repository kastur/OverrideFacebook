.class public Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;
.super Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/jsontype/NamedType;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/jsontype/NamedType;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p4, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/jsontype/NamedType;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v0

    .line 127
    :cond_0
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/jsontype/NamedType;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    .line 131
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    return-void

    .line 138
    :cond_2
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p4, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    .line 142
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    new-instance v2, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/jsontype/NamedType;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 147
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/jsontype/NamedType;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v2, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 103
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/jsontype/NamedType;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/jsontype/NamedType;

    .line 73
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/jsontype/NamedType;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/jsontype/NamedType;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v2, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 81
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/jsontype/NamedType;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
