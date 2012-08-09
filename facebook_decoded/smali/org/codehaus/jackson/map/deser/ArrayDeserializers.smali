.class public Lorg/codehaus/jackson/map/deser/ArrayDeserializers;
.super Ljava/lang/Object;
.source "ArrayDeserializers.java"


# static fields
.field private static b:Lorg/codehaus/jackson/map/deser/ArrayDeserializers;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->b:Lorg/codehaus/jackson/map/deser/ArrayDeserializers;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a:Ljava/util/HashMap;

    .line 28
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$BooleanDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$BooleanDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 34
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 35
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 36
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$IntDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$IntDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 37
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 39
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 40
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$DoubleDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$DoubleDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 42
    const-class v0, Ljava/lang/String;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 46
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$CharDeser;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$CharDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 47
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
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->b:Lorg/codehaus/jackson/map/deser/ArrayDeserializers;

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers;->a:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
