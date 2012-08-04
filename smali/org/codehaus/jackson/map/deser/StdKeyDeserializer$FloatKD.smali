.class final Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;
.super Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 170
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .parameter

    .prologue
    .line 178
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;->c(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
