.class public Lcom/facebook/orca/common/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 137
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 143
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 145
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :cond_2
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 147
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 148
    :cond_3
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 149
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 150
    :cond_4
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_7

    .line 151
    check-cast v1, Lorg/json/JSONArray;

    .line 152
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 153
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_6

    .line 155
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 156
    :cond_6
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 157
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 159
    :cond_7
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 160
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 163
    :cond_8
    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 168
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 133
    const-class v1, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter

    .prologue
    .line 127
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 128
    const-class v1, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method public static c(Lorg/codehaus/jackson/JsonNode;)J
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    if-nez p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-wide v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->s()J

    move-result-wide v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static d(Lorg/codehaus/jackson/JsonNode;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->r()I

    move-result v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Lorg/codehaus/jackson/JsonNode;)D
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 88
    if-nez p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-wide v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->t()D

    move-result-wide v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static f(Lorg/codehaus/jackson/JsonNode;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->r()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
