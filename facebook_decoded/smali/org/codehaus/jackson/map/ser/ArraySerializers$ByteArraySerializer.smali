.class public final Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<[B>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const-class v0, [B

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 224
    return-void
.end method

.method private static a([BLorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1, p0}, Lorg/codehaus/jackson/JsonGenerator;->a([B)V

    .line 231
    return-void
.end method

.method private static a([BLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p2, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 239
    invoke-virtual {p1, p0}, Lorg/codehaus/jackson/JsonGenerator;->a([B)V

    .line 240
    invoke-virtual {p2, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 241
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    check-cast p1, [B

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;->a([BLorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    check-cast p1, [B

    invoke-static {p1, p2, p4}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;->a([BLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
