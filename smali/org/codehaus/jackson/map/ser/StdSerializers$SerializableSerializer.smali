.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializable;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 443
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-interface {p0, p1, p2}, Lorg/codehaus/jackson/map/JsonSerializable;->a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 450
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    instance-of v0, p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    if-eqz v0, :cond_0

    .line 462
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-interface {p1, p2, p3, p4}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
