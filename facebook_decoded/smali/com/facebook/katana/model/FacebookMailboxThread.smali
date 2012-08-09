.class public Lcom/facebook/katana/model/FacebookMailboxThread;
.super Ljava/lang/Object;
.source "FacebookMailboxThread.java"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I

.field private f:I

.field private final g:J

.field private final h:J

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JIIJJLjava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIIJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/LinkedHashSet;

    move-object/from16 v0, p13

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    .line 51
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->a:J

    .line 56
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->b:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->c:Ljava/lang/String;

    .line 58
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->d:J

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->e:I

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->f:I

    .line 61
    iput-wide p9, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->g:J

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 26
    .parameter

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v13, -0x1

    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    const-wide/16 v9, -0x1

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    const-wide/16 v5, -0x1

    .line 78
    const/4 v4, 0x0

    .line 79
    const-wide/16 v2, 0x0

    .line 81
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v1, v18

    move-object v3, v4

    move-wide/from16 v20, v5

    move-wide/from16 v4, v20

    move v6, v7

    move v7, v8

    move-wide/from16 v22, v9

    move-wide/from16 v8, v22

    move-object v10, v11

    move-object v11, v12

    move-wide/from16 v24, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, v17

    .line 84
    :goto_0
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v14, v15, :cond_f

    .line 87
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_4

    .line 88
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v14

    .line 89
    const-string v15, "thread_id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 90
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 140
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    goto :goto_0

    .line 91
    :cond_1
    const-string v15, "subject"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 93
    :cond_2
    const-string v15, "snippet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 94
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 95
    :cond_3
    const-string v15, "snippet_author"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 98
    :cond_4
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_a

    .line 99
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v14

    .line 100
    const-string v15, "thread_id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 101
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v12

    goto :goto_1

    .line 102
    :cond_5
    const-string v15, "message_count"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 103
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v7

    goto :goto_1

    .line 104
    :cond_6
    const-string v15, "unread"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v6

    goto :goto_1

    .line 106
    :cond_7
    const-string v15, "updated_time"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v4

    goto :goto_1

    .line 108
    :cond_8
    const-string v15, "snippet_author"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v8

    goto :goto_1

    .line 110
    :cond_9
    const-string v15, "object_id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v1

    goto/16 :goto_1

    .line 113
    :cond_a
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_b

    .line 114
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    sget-object v15, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v14, v15, :cond_0

    goto :goto_2

    .line 117
    :cond_b
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_e

    .line 118
    if-eqz v3, :cond_0

    .line 119
    const-string v14, "recipients"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    .line 121
    :goto_3
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v14, v15, :cond_0

    .line 122
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_c

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    goto :goto_3

    .line 132
    :cond_d
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    sget-object v15, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v14, v15, :cond_0

    goto :goto_4

    .line 137
    :cond_e
    sget-object v15, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v14, v15, :cond_0

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 143
    :cond_f
    const-wide/16 v14, 0x0

    cmp-long v3, v14, v1

    if-eqz v3, :cond_10

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_10
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->a:J

    .line 148
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->b:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->c:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->d:J

    .line 151
    move-object/from16 v0, p0

    iput v7, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->e:I

    .line 152
    move-object/from16 v0, p0

    iput v6, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->f:I

    .line 153
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->g:J

    .line 154
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    .line 155
    return-void
.end method

.method private a(J)J
    .locals 6
    .parameter

    .prologue
    .line 191
    const-wide/16 v0, -0x1

    .line 192
    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 193
    iget-wide v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    .line 201
    :cond_0
    :goto_0
    return-wide v1

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 196
    cmp-long v0, v3, p1

    if-eqz v0, :cond_2

    move-wide v0, v3

    :goto_2
    move-wide v1, v0

    .line 197
    goto :goto_1

    :cond_2
    move-wide v0, v1

    goto :goto_2

    :cond_3
    move-wide v1, v0

    goto :goto_0
.end method

.method private i()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->a:J

    return-wide v0
.end method

.method public final a(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    const-string v1, "folder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v1, "tid"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v1, "subject"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "snippet"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "other_party"

    invoke-direct {p0, p2, p3}, Lcom/facebook/katana/model/FacebookMailboxThread;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v1, "msg_count"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v1, "unread_count"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v1, "last_update"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    const-string v1, "object_id"

    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookMailboxThread;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v1, "participants"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p4, p5, v2}, Lcom/facebook/katana/model/FacebookMailboxThread;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 247
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 273
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 256
    invoke-virtual {v0, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 258
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 261
    if-eqz v0, :cond_2

    .line 262
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 263
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 269
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->d:J

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->f:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->g:J

    return-wide v0
.end method

.method public final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookMailboxThread;->i:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
