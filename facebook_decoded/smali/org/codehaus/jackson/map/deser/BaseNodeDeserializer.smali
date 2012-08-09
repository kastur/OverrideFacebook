.class abstract Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/codehaus/jackson/JsonNode;",
        ">",
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->e()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->c()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 181
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    .line 185
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 189
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    return-object v1
.end method

.method protected final c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->e()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->b()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 200
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 203
    :cond_0
    return-object v0
.end method

.method protected final d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->e()Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 210
    sget-object v0, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 213
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 216
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 224
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, v1, :cond_2

    .line 229
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 237
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_7
    invoke-static {}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
