.class public Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "AnnotationIntrospector.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field private b:Lorg/codehaus/jackson/map/AnnotationIntrospector;


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 907
    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 910
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1158
    if-nez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1161
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1326
    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1329
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1088
    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1091
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v1

    .line 1027
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v2

    .line 1028
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1033
    :goto_0
    return-object v0

    .line 1029
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 1030
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1031
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1032
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1
    .parameter

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1055
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    .line 1141
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 995
    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 998
    :cond_0
    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1009
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .parameter

    .prologue
    .line 894
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .parameter

    .prologue
    .line 1075
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1168
    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1171
    :cond_0
    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1337
    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1340
    :cond_0
    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1101
    :cond_0
    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1294
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1295
    if-nez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1298
    :cond_0
    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 916
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 917
    if-nez v0, :cond_1

    .line 918
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 924
    :cond_0
    :goto_0
    return-object v0

    .line 919
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 923
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    if-nez v1, :cond_1

    .line 1266
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    :cond_0
    :goto_0
    return-object v0

    .line 1267
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1271
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1228
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    if-nez v1, :cond_1

    .line 1230
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    :cond_0
    :goto_0
    return-object v0

    .line 1231
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1017
    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1020
    :cond_0
    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1109
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1111
    :cond_1
    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1351
    :cond_0
    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1398
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1399
    if-nez v1, :cond_1

    .line 1400
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_0
    :goto_0
    return-object v0

    .line 1401
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1406
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_0
    return-object v0
.end method

.method public final d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 941
    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 944
    :cond_0
    return-object v0
.end method

.method public final d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1119
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1121
    :cond_1
    return-object v0
.end method

.method public final d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1360
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    if-nez v1, :cond_1

    .line 1362
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    :cond_0
    :goto_0
    return-object v0

    .line 1363
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1367
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 950
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 951
    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 954
    :cond_0
    return-object v0
.end method

.method public final e(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1148
    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1151
    :cond_0
    return-object v0
.end method

.method public final e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 961
    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 964
    :cond_0
    return-object v0
.end method

.method public final f(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .parameter

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1178
    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1181
    :cond_0
    return-object v0
.end method

.method public final f(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 1384
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    :cond_1
    return-object v0
.end method

.method public final g(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1192
    if-nez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->g(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1195
    :cond_0
    return-object v0
.end method

.method public final h(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->h(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1285
    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->h(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1288
    :cond_0
    return-object v0
.end method

.method public final h(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1202
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->h(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1203
    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->h(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1206
    :cond_0
    return-object v0
.end method

.method public final i(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 1216
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->i(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1217
    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->i(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1220
    :cond_0
    return-object v0
.end method

.method public final i(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->i(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->i(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1308
    :cond_1
    return-object v0
.end method

.method public final j(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->j(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1316
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->j(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1318
    :cond_1
    return-object v0
.end method

.method public final k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .parameter

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
