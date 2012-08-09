.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 407
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/sql/Time;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 414
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    check-cast p1, Ljava/sql/Time;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;->a(Ljava/sql/Time;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
