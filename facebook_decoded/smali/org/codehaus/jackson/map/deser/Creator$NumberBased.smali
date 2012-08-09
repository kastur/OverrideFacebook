.class final Lorg/codehaus/jackson/map/deser/Creator$NumberBased;
.super Ljava/lang/Object;
.source "Creator.java"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a:Ljava/lang/Class;

    .line 79
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->b:Ljava/lang/reflect/Constructor;

    .line 80
    if-nez p4, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->c:Ljava/lang/reflect/Constructor;

    .line 81
    if-nez p3, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->d:Ljava/lang/reflect/Method;

    .line 82
    if-nez p5, :cond_3

    :goto_3
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->e:Ljava/lang/reflect/Method;

    .line 83
    return-void

    .line 79
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->b:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Throwable;)V

    .line 99
    :cond_1
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Throwable;)V

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
