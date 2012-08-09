.class Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a:Ljava/util/HashMap;

    .line 31
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$BoolKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ByteKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 33
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 34
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ShortKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 35
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$IntKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 36
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 38
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 39
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V

    return-object v1
.end method

.method private a(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->a()Ljava/lang/Class;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->a:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 74
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 86
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
