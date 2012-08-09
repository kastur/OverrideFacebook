.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
.super Ljava/lang/Object;
.source "AnnotatedMethodMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/codehaus/jackson/map/introspect/MemberKey;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1, p2}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Lorg/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
