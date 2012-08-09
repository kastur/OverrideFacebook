.class final Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;
.super Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer",
        "<",
        "Lorg/codehaus/jackson/node/ArrayNode;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;->a:Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    .line 98
    return-void
.end method

.method public static b()Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;->a:Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;

    return-object v0
.end method

.method private r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    const-class v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/JsonNodeDeserializer$ArrayDeserializer;->r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method
