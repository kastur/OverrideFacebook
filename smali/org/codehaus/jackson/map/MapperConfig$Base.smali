.class public Lorg/codehaus/jackson/map/MapperConfig$Base;
.super Ljava/lang/Object;
.source "MapperConfig.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field private c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

.field private e:Lorg/codehaus/jackson/map/type/TypeFactory;

.field private f:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Ljava/text/DateFormat;

.field private h:Lorg/codehaus/jackson/map/HandlerInstantiator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;",
            "Ljava/text/DateFormat;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->a:Lorg/codehaus/jackson/map/ClassIntrospector;

    .line 742
    iput-object p2, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 743
    iput-object p3, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .line 744
    iput-object p4, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->d:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .line 745
    iput-object p5, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->f:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .line 747
    iput-object p7, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->g:Ljava/text/DateFormat;

    .line 748
    iput-object p8, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->h:Lorg/codehaus/jackson/map/HandlerInstantiator;

    .line 749
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/map/ClassIntrospector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->a:Lorg/codehaus/jackson/map/ClassIntrospector;

    return-object v0
.end method

.method public final b()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->c:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    return-object v0
.end method

.method public final d()Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->d:Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    return-object v0
.end method

.method public final e()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->e:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public final f()Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->f:Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    return-object v0
.end method

.method public final g()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->g:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/map/HandlerInstantiator;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Base;->h:Lorg/codehaus/jackson/map/HandlerInstantiator;

    return-object v0
.end method
