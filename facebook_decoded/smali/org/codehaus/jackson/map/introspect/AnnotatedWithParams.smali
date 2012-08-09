.class public abstract Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

.field protected final b:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotationMap;[Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->a:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 39
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->b:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->a:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object p1

    .line 88
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 89
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/String;)V

    .line 93
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 94
    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 96
    :goto_1
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/annotation/Annotation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->b:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    aget-object v0, v0, p1

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V

    .line 62
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->b:[Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 64
    :cond_0
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->b(Ljava/lang/annotation/Annotation;)V

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->a:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->b(Ljava/lang/annotation/Annotation;)V

    .line 49
    return-void
.end method

.method public final b(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->a:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/annotation/Annotation;)V

    .line 75
    return-void
.end method

.method public abstract e()I
.end method
