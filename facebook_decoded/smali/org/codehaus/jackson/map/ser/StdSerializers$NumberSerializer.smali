.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/Number;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 284
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigDecimal;)V

    .line 305
    :goto_0
    return-void

    .line 285
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 286
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 291
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    goto :goto_0

    .line 293
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    goto :goto_0

    .line 295
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 296
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(D)V

    goto :goto_0

    .line 297
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 298
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(F)V

    goto :goto_0

    .line 299
    :cond_5
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 300
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    goto :goto_0

    .line 303
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->a(Ljava/lang/Number;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
