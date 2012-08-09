.class final Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;
.super Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 148
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 153
    invoke-static {p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
