.class public final Lorg/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;
.super Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
.source "JodaSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer",
        "<",
        "Lorg/joda/time/DateMidnight;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Lorg/joda/time/DateMidnight;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 182
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->year()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    .line 183
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->monthOfYear()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    .line 184
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->dayOfMonth()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    .line 185
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;->a(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    check-cast p1, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;->a(Lorg/joda/time/DateMidnight;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
