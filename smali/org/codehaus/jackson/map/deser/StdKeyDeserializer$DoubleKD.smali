.class final Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;
.super Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;->c(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;->d(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
