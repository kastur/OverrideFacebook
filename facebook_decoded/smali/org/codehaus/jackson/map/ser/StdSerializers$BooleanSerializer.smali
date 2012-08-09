.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;
.super Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 83
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 84
    return-void
.end method

.method private static a(Ljava/lang/Boolean;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;->a(Ljava/lang/Boolean;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
