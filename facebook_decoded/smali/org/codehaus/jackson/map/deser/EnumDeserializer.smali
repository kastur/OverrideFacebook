.class public Lorg/codehaus/jackson/map/deser/EnumDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonCachable;
.end annotation


# instance fields
.field private a:Lorg/codehaus/jackson/map/deser/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    .line 34
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c(I)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter #0 type for factory method ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not suitable, must be java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 55
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 71
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 80
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 84
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    .line 89
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a(I)Ljava/lang/Enum;

    move-result-object v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index value outside legal index range [0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/EnumResolver;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->c(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 93
    :cond_3
    return-object v0
.end method
