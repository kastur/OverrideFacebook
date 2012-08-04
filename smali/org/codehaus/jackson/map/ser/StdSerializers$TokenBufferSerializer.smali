.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 595
    const-class v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lorg/codehaus/jackson/util/TokenBuffer;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 602
    return-void
.end method

.method private a(Lorg/codehaus/jackson/util/TokenBuffer;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 622
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;->a(Lorg/codehaus/jackson/util/TokenBuffer;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 623
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 624
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    check-cast p1, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;->a(Lorg/codehaus/jackson/util/TokenBuffer;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    check-cast p1, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;->a(Lorg/codehaus/jackson/util/TokenBuffer;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
