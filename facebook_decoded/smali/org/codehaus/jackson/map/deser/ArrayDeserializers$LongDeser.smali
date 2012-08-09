.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[J>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 412
    const-class v0, [J

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[J

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 421
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->g()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->e()Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    move-result-object v4

    .line 422
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    move-object v2, v0

    move v0, v1

    .line 425
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v5, :cond_1

    .line 426
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;->l(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)J

    move-result-wide v5

    .line 427
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 428
    invoke-virtual {v4, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    move v3, v1

    move-object v2, v0

    .line 431
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-wide v5, v2, v3

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v4, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_2
.end method

.method private final c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 439
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;->h:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 442
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;->l(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$LongDeser;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[J

    move-result-object v0

    return-object v0
.end method
