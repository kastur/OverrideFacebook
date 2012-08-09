.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/Long;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    .line 206
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a(Ljava/lang/Long;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
