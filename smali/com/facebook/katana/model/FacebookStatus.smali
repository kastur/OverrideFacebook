.class public Lcom/facebook/katana/model/FacebookStatus;
.super Ljava/lang/Object;
.source "FacebookStatus.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Lcom/facebook/katana/model/FacebookUser;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/model/FacebookUser;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookStatus;->c:Lcom/facebook/katana/model/FacebookUser;

    .line 114
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookStatus;->a:Ljava/lang/String;

    .line 115
    iput-wide p3, p0, Lcom/facebook/katana/model/FacebookStatus;->b:J

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 17
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v13, 0x0

    .line 31
    const-wide/16 v2, -0x1

    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const-wide/16 v9, 0x0

    .line 37
    const/4 v8, 0x0

    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 40
    :goto_0
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v4, :cond_b

    .line 43
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_4

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v4, "first_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    move-object v4, v11

    move-object v5, v1

    move-object v1, v8

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    .line 86
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v11

    move-object v12, v5

    move-object v13, v10

    move-wide v14, v2

    move-wide v2, v8

    move-wide v9, v14

    move-object v8, v1

    move-object v1, v11

    move-object v11, v4

    goto :goto_0

    .line 47
    :cond_0
    const-string v4, "last_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v5, v12

    move-object v1, v8

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    goto :goto_1

    .line 49
    :cond_1
    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    move-object v4, v11

    move-object v5, v12

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    goto :goto_1

    .line 51
    :cond_2
    const-string v4, "pic_square"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 54
    const/4 v7, 0x0

    :cond_3
    move-object v1, v8

    move-object v4, v11

    move-object v5, v12

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    .line 57
    goto :goto_1

    :cond_4
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_6

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v4, "uid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v2

    :cond_5
    move-object v1, v8

    move-object v4, v11

    move-object v5, v12

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    .line 62
    goto :goto_1

    :cond_6
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_a

    .line 63
    if-eqz v13, :cond_f

    .line 64
    const-string v4, "status"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-wide v4, v9

    move-object v14, v8

    move-object v8, v1

    move-object v1, v14

    .line 65
    :goto_2
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_11

    .line 66
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v9, :cond_8

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v8

    .line 68
    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    :cond_7
    move-object v8, v1

    .line 77
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v14, v1

    move-object v1, v8

    move-object v8, v14

    goto :goto_2

    .line 71
    :cond_8
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v9, :cond_10

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v8

    .line 73
    const-string v9, "time"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v4

    move-object v8, v1

    goto :goto_3

    .line 80
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    move-object v1, v8

    move-object v4, v11

    move-object v5, v12

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    goto/16 :goto_1

    .line 83
    :cond_a
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_f

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    move-object v4, v11

    move-object v5, v12

    move-object v14, v8

    move-wide v15, v9

    move-wide v8, v2

    move-object v10, v1

    move-wide v2, v15

    move-object v1, v14

    goto/16 :goto_1

    .line 89
    :cond_b
    if-eqz v12, :cond_e

    const-string v1, "null"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 90
    const/4 v12, 0x0

    move-object v4, v12

    .line 92
    :goto_4
    if-eqz v11, :cond_d

    const-string v1, "null"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 93
    const/4 v11, 0x0

    move-object v5, v11

    .line 96
    :goto_5
    new-instance v1, Lcom/facebook/katana/model/FacebookUser;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/katana/model/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/katana/model/FacebookStatus;->c:Lcom/facebook/katana/model/FacebookUser;

    .line 97
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 98
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/facebook/katana/model/FacebookStatus;->a:Ljava/lang/String;

    .line 102
    :goto_6
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/facebook/katana/model/FacebookStatus;->b:J

    .line 103
    return-void

    .line 100
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/katana/model/FacebookStatus;->a:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v5, v11

    goto :goto_5

    :cond_e
    move-object v4, v12

    goto :goto_4

    :cond_f
    move-object v1, v8

    move-object v4, v11

    move-object v5, v12

    move-wide v14, v9

    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v14

    goto/16 :goto_1

    :cond_10
    move-object v8, v1

    goto/16 :goto_3

    :cond_11
    move-wide v8, v2

    move-object v10, v13

    move-wide v2, v4

    move-object v5, v12

    move-object v4, v11

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/model/FacebookUser;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookStatus;->c:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookStatus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookStatus;->b:J

    return-wide v0
.end method
