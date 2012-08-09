.class public final Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer",
        "<[F>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    const-class v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method

.method private static a([FLorg/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 428
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 429
    aget v2, p0, v0

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->a(F)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    check-cast p1, [F

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;->a([FLorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
