.class public final Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer",
        "<[I>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    const-class v0, [I

    invoke-direct {p0, v0, v1, v1}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method

.method private static a([ILorg/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 369
    aget v2, p0, v0

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 0
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
    .line 361
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    check-cast p1, [I

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;->a([ILorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
