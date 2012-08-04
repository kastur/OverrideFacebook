.class public Lcom/facebook/orca/database/DbCoordinatesSerialization;
.super Ljava/lang/Object;
.source "DbCoordinatesSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/facebook/orca/location/Coordinates;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/facebook/orca/location/Coordinates;->newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v3

    const-string v0, "accuracy"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "accuracy"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v3

    const-string v0, "altitude"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "altitude"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v3

    const-string v0, "altitudeAccuracy"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "altitudeAccuracy"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v3

    const-string v0, "heading"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "heading"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v3, "speed"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "speed"

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->d(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->h()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method static a(Lcom/facebook/orca/location/Coordinates;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 24
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 25
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "accuracy"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->e()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string v1, "altitude"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->c()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    const-string v1, "altitudeAccuracy"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->g()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    const-string v1, "heading"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->i()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    const-string v1, "speed"

    invoke-virtual {p0}, Lcom/facebook/orca/location/Coordinates;->k()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 41
    :cond_5
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
