.class public Lcom/facebook/katana/model/FacebookMailboxThreadMessage;
.super Ljava/lang/Object;
.source "FacebookMailboxThreadMessage.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;J)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v7, -0x1

    .line 44
    const-wide/16 v5, -0x1

    .line 45
    const-wide/16 v3, -0x1

    .line 46
    const/4 v2, 0x0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v10, v1

    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move-wide v15, v5

    move-wide v4, v15

    move-wide/from16 v17, v7

    move-wide/from16 v6, v17

    move-wide/from16 v8, p2

    .line 49
    :goto_0
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v10, v11, :cond_9

    .line 52
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v11, :cond_3

    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v10

    .line 54
    const-string v11, "body"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    goto :goto_0

    .line 56
    :cond_1
    const-string v11, "message_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v6

    .line 58
    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 59
    :cond_2
    const-string v11, "thread_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 62
    :cond_3
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v11, :cond_6

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v10

    .line 64
    const-string v11, "thread_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v8

    goto :goto_1

    .line 66
    :cond_4
    const-string v11, "author_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v4

    goto :goto_1

    .line 68
    :cond_5
    const-string v11, "created_time"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v2

    goto :goto_1

    .line 71
    :cond_6
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v11, :cond_0

    .line 72
    const/4 v10, 0x1

    .line 73
    :cond_7
    :goto_2
    if-lez v10, :cond_0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v11

    .line 75
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v11, v12, :cond_8

    .line 76
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 77
    :cond_8
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v11, v12, :cond_7

    .line 78
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 85
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->a:J

    .line 86
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->b:J

    .line 87
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->c:J

    .line 88
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->d:J

    .line 89
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->e:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->d:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->e:Ljava/lang/String;

    return-object v0
.end method
