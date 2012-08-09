.class public Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;
.super Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer",
        "<",
        "Lorg/joda/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/joda/time/LocalDate;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/LocalDate;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 119
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 121
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v2

    .line 122
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 123
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v3

    .line 124
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_0

    .line 125
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    const-string v1, "after LocalDate ints"

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 127
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(III)V

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaDeserializers$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    const-string v1, "expected JSON Array, String or Number"

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 131
    :pswitch_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/LocalDate;-><init>(J)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {p1}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;->a(Lorg/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 134
    if-nez v0, :cond_2

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$LocalDateDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method
