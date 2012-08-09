.class public final Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "EnumSetDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Ljava/util/EnumSet",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/codehaus/jackson/map/deser/EnumDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Ljava/util/EnumSet;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/deser/EnumDeserializer;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/deser/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->b:Lorg/codehaus/jackson/map/deser/EnumDeserializer;

    .line 34
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->a:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method private b()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/EnumSet",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->b()Ljava/util/EnumSet;

    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2

    .line 55
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->b:Lorg/codehaus/jackson/map/deser/EnumDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/deser/EnumDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/EnumSetDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
