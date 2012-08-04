.class final Lorg/codehaus/jackson/map/deser/Creator$Delegating;
.super Ljava/lang/Object;
.source "Creator.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field private b:Lorg/codehaus/jackson/type/JavaType;

.field private c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    .line 155
    if-eqz p2, :cond_0

    .line 156
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 157
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->d()Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->c:Ljava/lang/reflect/Constructor;

    .line 158
    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->d:Ljava/lang/reflect/Method;

    .line 159
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->c(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->b:Lorg/codehaus/jackson/type/JavaType;

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p3, :cond_1

    .line 161
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 162
    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->c:Ljava/lang/reflect/Constructor;

    .line 163
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->d:Ljava/lang/reflect/Method;

    .line 164
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->b:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->c:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->c:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 188
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->b:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 177
    return-void
.end method

.method public final b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method
