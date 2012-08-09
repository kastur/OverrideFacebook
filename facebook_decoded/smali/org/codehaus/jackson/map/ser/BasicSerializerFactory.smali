.class public abstract Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.super Lorg/codehaus/jackson/map/SerializerFactory;
.source "BasicSerializerFactory.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/StdSerializers$StringSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/StdSerializers$StringSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    .line 69
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;-><init>()V

    .line 78
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    .line 95
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lorg/codehaus/jackson/map/ser/JdkSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/JdkSerializers;-><init>()V

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/JdkSerializers;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 110
    instance-of v3, v1, Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 114
    check-cast v1, Ljava/lang/Class;

    .line 115
    sget-object v3, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: unrecognized value of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    const-class v1, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sput-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [Z

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$BooleanArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$BooleanArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [B

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [C

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$CharArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$CharArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [S

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$ShortArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ShortArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [I

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [F

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    const-class v1, [D

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/codehaus/jackson/map/ser/ArraySerializers$DoubleArraySerializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ser/ArraySerializers$DoubleArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/codehaus/jackson/map/SerializerFactory;-><init>()V

    .line 144
    sget-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 157
    return-void
.end method

.method protected static a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    if-nez v0, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 371
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_2

    .line 351
    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 352
    instance-of v1, v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-eqz v1, :cond_0

    .line 353
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    invoke-interface {v0}, Lorg/codehaus/jackson/map/ContextualSerializer;->a()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 361
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AnnotationIntrospector returned value of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_3
    check-cast v0, Ljava/lang/Class;

    .line 364
    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 365
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AnnotationIntrospector returned Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; expected Class<JsonSerializer>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 368
    instance-of v1, v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    invoke-interface {v0}, Lorg/codehaus/jackson/map/ContextualSerializer;->a()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Serializers;

    .line 435
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Serializers;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Serializers;

    .line 458
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Serializers;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-object v0

    .line 464
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/CollectionType;->n()Ljava/lang/Class;

    move-result-object v0

    .line 465
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    invoke-static {p2, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/CollectionType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    .line 470
    invoke-static {v0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_3

    .line 472
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/IndexedStringListSerializer;

    invoke-direct {v0, p4}, Lorg/codehaus/jackson/map/ser/impl/IndexedStringListSerializer;-><init>(Lorg/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/CollectionType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, p5, p6, p4, p7}, Lorg/codehaus/jackson/map/ser/ContainerSerializers;->a(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_5

    .line 478
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/StringCollectionSerializer;

    invoke-direct {v0, p4}, Lorg/codehaus/jackson/map/ser/impl/StringCollectionSerializer;-><init>(Lorg/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 480
    :cond_5
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/CollectionType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, p5, p6, p4, p7}, Lorg/codehaus/jackson/map/ser/ContainerSerializers;->b(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Serializers;

    .line 526
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Serializers;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Serializers;

    .line 548
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Serializers;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-object v0

    .line 554
    :cond_1
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/type/MapType;->n()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p7

    move-object v5, p8

    .line 555
    invoke-static/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move v2, p5

    move-object v3, p7

    move-object v4, p4

    move-object v5, p6

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/MapSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->k()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 576
    const/4 v3, 0x0

    .line 577
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/EnumValues;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v3

    .line 582
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    move v2, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/type/JavaType;->b(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 626
    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 629
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v1

    .line 630
    invoke-static {p1, p3, v1, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lorg/codehaus/jackson/map/ser/ContainerSerializers;->a(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/ArrayType;->n()Ljava/lang/Class;

    move-result-object v0

    .line 602
    const-class v1, [Ljava/lang/String;

    if-ne v1, v0, :cond_1

    .line 603
    new-instance v0, Lorg/codehaus/jackson/map/ser/ArraySerializers$StringArraySerializer;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ser/ArraySerializers$StringArraySerializer;-><init>(Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 610
    :cond_0
    :goto_0
    return-object v0

    .line 606
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 607
    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/ArrayType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0
.end method

.method public static a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 225
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/JsonSerializer;

    .line 226
    if-eqz v1, :cond_0

    .line 238
    :goto_0
    return-object v1

    .line 229
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 230
    if-eqz v1, :cond_1

    .line 232
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to instantiate standard serializer (of type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 238
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :cond_0
    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/type/JavaType;->h(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 672
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to widen type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with concrete-type annotation (value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), method \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\': "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 503
    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected static a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 754
    if-eqz p2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v0

    .line 757
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 758
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 759
    if-eqz v3, :cond_2

    .line 760
    sget-object v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 761
    goto :goto_0

    .line 764
    :cond_2
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 765
    goto :goto_0

    .line 771
    :cond_3
    if-eqz p3, :cond_0

    .line 772
    invoke-interface {p3}, Lorg/codehaus/jackson/map/BeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 773
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    invoke-interface {p3}, Lorg/codehaus/jackson/map/BeanProperty;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v4

    invoke-interface {p3}, Lorg/codehaus/jackson/map/BeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 775
    goto :goto_0

    .line 777
    :cond_4
    instance-of v3, v3, Lorg/codehaus/jackson/map/type/MapType;

    if-eqz v3, :cond_0

    .line 778
    invoke-interface {p3}, Lorg/codehaus/jackson/map/BeanProperty;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v3

    invoke-interface {p3}, Lorg/codehaus/jackson/map/BeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 779
    goto :goto_0
.end method

.method private static b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 714
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_0

    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v2, :cond_1

    .line 716
    :cond_0
    if-eqz p2, :cond_1

    .line 717
    invoke-interface {p2}, Lorg/codehaus/jackson/map/BeanProperty;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 720
    :cond_1
    if-eqz v0, :cond_2

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v0, v1, :cond_2

    .line 721
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 639
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/type/JavaType;->b(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 640
    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->b()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v1

    .line 644
    invoke-static {p1, p3, v1, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lorg/codehaus/jackson/map/ser/ContainerSerializers;->b(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 683
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->k()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v3

    .line 685
    if-eqz v3, :cond_1

    .line 687
    instance-of v1, p2, Lorg/codehaus/jackson/map/type/MapType;

    if-nez v1, :cond_0

    .line 688
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal key-type annotation: type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Map type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/codehaus/jackson/map/type/MapType;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/map/type/MapType;->e(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 698
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_2

    .line 701
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/type/JavaType;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    .line 707
    :cond_2
    return-object p2

    .line 692
    :catch_0
    move-exception v1

    .line 693
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to narrow key type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with key-type annotation ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :catch_1
    move-exception v2

    .line 703
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to narrow content type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with content-type annotation ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static c(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 730
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_0

    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v2, :cond_1

    .line 732
    :cond_0
    if-eqz p2, :cond_1

    .line 733
    invoke-interface {p2}, Lorg/codehaus/jackson/map/BeanProperty;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 736
    :cond_1
    if-eqz v0, :cond_2

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v0, v1, :cond_2

    .line 737
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    .line 322
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    sget-object v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    goto :goto_0

    .line 331
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    .line 256
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->g()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 267
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 270
    :cond_3
    invoke-static {p2, v0, p4}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 271
    new-instance v0, Lorg/codehaus/jackson/map/ser/JsonValueSerializer;

    invoke-direct {v0, v1, v2, p4}, Lorg/codehaus/jackson/map/ser/JsonValueSerializer;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 275
    :cond_4
    const-class v0, Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    sget-object v0, Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;->a:Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;

    goto :goto_0

    .line 279
    :cond_5
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    sget-object v0, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a:Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;

    goto :goto_0

    .line 284
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 289
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    goto :goto_0

    .line 292
    :cond_7
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 295
    invoke-static {v1, p2}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ser/EnumSerializer;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_8
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    goto :goto_0

    .line 300
    :cond_9
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    goto :goto_0

    .line 303
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->g()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v2}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v10

    .line 388
    if-eqz v10, :cond_0

    .line 389
    const/4 v8, 0x0

    .line 393
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v3, v1}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->c(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v11

    .line 396
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v6, p2

    .line 397
    check-cast v6, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 398
    invoke-virtual/range {p3 .. p3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v3, v1}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v9

    .line 399
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/type/MapLikeType;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v5, v6

    .line 400
    check-cast v5, Lorg/codehaus/jackson/map/type/MapType;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v11}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 419
    :goto_1
    return-object v3

    .line 390
    :cond_0
    if-nez p5, :cond_6

    .line 391
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v10, v2}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 403
    invoke-direct/range {v4 .. v11}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_1

    .line 406
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v7, p2

    .line 407
    check-cast v7, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 408
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->n_()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v14, v7

    .line 409
    check-cast v14, Lorg/codehaus/jackson/map/type/CollectionType;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 412
    invoke-direct/range {v5 .. v11}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_1

    .line 415
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 416
    check-cast p2, Lorg/codehaus/jackson/map/type/ArrayType;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v8, v10, v11}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_1

    .line 419
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    move/from16 v8, p5

    goto/16 :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 181
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 183
    invoke-virtual {v3, p1, v0, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 188
    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->l()Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 193
    :goto_0
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->m()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, v0, p1, v3}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {v2, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    goto :goto_1
.end method
