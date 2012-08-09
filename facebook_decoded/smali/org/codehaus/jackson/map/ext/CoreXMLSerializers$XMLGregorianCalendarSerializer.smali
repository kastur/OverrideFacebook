.class public Lorg/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "CoreXMLSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljavax/xml/datatype/XMLGregorianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method private static a(Ljavax/xml/datatype/XMLGregorianCalendar;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a(Ljava/util/Calendar;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;->a(Ljavax/xml/datatype/XMLGregorianCalendar;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
