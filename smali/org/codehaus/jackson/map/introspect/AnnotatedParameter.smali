.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedParameter.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field private b:Ljava/lang/reflect/Type;

.field private c:Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 48
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    .line 49
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->c:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method

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
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->c:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->f()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method
