.class public Lorg/codehaus/jackson/map/deser/StdDeserializer$TokenBufferDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
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
    .line 1269
    const-class v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/util/TokenBuffer;
    .locals 2
    .parameter

    .prologue
    .line 1275
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1277
    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 1278
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1265
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/StdDeserializer$TokenBufferDeserializer;->a(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/util/TokenBuffer;

    move-result-object v0

    return-object v0
.end method
