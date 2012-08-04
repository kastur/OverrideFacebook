.class public Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "TimeZoneSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a:Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/util/TimeZone;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private a(Ljava/util/TimeZone;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {p4, p1, p2, v0}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V

    .line 36
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a(Ljava/util/TimeZone;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 37
    invoke-virtual {p4, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Ljava/util/TimeZone;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a(Ljava/util/TimeZone;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a(Ljava/util/TimeZone;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
