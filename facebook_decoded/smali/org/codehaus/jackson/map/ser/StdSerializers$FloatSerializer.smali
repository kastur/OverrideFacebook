.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/Float;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(F)V

    .line 228
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    check-cast p1, Ljava/lang/Float;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a(Ljava/lang/Float;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
