.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 331
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/util/Calendar;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(JLorg/codehaus/jackson/JsonGenerator;)V

    .line 338
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a(Ljava/util/Calendar;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
