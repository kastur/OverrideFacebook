.class public Lcom/facebook/orca/location/CoordinatesDeserializer;
.super Ljava/lang/Object;
.source "CoordinatesDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {}, Lcom/facebook/orca/location/Coordinates;->newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v2, "latitude"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v2, "longitude"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v2

    const-string v0, "altitude"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "altitude"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v2

    const-string v0, "accuracy"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "accuracy"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v2

    const-string v0, "altitudeAccuracy"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "altitudeAccuracy"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v2

    const-string v0, "heading"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "heading"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v2, "speed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "speed"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->d(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->h()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method
