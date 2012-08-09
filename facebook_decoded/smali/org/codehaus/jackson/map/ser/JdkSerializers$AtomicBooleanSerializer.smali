.class public final Lorg/codehaus/jackson/map/ser/JdkSerializers$AtomicBooleanSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "JdkSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;B)V

    return-void
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/JdkSerializers$AtomicBooleanSerializer;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
