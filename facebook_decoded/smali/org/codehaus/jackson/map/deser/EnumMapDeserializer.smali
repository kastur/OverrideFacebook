.class public final Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "EnumMapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Ljava/util/EnumMap",
        "<**>;>;"
    }
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

.field private b:Lorg/codehaus/jackson/map/JsonDeserializer;
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
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/EnumResolver;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 31
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    .line 32
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->b:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 33
    return-void
.end method

.method private b()Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumMap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/EnumMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 42
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 44
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->b()Ljava/util/EnumMap;

    move-result-object v1

    .line 46
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_3

    .line 47
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->a:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 57
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 59
    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->b:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/EnumMapDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
