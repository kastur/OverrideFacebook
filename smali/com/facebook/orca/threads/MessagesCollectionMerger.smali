.class public Lcom/facebook/orca/threads/MessagesCollectionMerger;
.super Ljava/lang/Object;
.source "MessagesCollectionMerger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const-string v1, "orca:MessagesCollectionMerger"

    const-string v2, "MERGE: %d new, %d old"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message Collections with different thread ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-object p1

    .line 77
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 p1, p2

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-static/range {p1 .. p2}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->d(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 p1, p2

    .line 86
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(B)V

    .line 92
    new-instance v5, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(B)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 95
    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_1

    .line 99
    :cond_5
    const/4 v2, 0x0

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 101
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 102
    invoke-static {v1, v3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    const/4 v1, 0x1

    .line 108
    :goto_2
    if-nez v1, :cond_8

    .line 109
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MERGE: couldn\'t find sync point"

    aput-object v3, v1, v2

    .line 110
    if-nez p3, :cond_1

    .line 117
    :goto_3
    const/4 v1, 0x0

    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v6

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v7

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 123
    new-instance v9, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;

    const/4 v3, 0x0

    invoke-direct {v9, v3}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>(B)V

    move v3, v1

    .line 124
    :cond_7
    :goto_4
    if-ge v3, v6, :cond_12

    if-ge v2, v7, :cond_12

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v10

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 131
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 132
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 114
    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "MERGE: found sync point (%s)"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_3

    .line 133
    :cond_9
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 135
    :cond_a
    invoke-static {v10, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 136
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: inserting matching element (%s)"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 137
    invoke-static {v1, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 138
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 142
    :goto_5
    add-int/lit8 v1, v3, 0x1

    .line 143
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_4

    .line 140
    :cond_b
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_5

    .line 145
    :cond_c
    invoke-virtual {v5, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 146
    invoke-virtual {v5, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v11

    .line 147
    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_d

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v11}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 150
    :cond_d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: Inserting new element (%s) and discarding old"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v12

    .line 151
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 152
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 153
    invoke-virtual {v5, v11}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 154
    add-int/lit8 v1, v3, 0x1

    :goto_6
    move v3, v1

    .line 185
    goto/16 :goto_4

    .line 158
    :cond_e
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: Iterating old to find message matching (%s)"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 159
    :goto_7
    invoke-static {v10, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v1

    if-nez v1, :cond_7

    if-ge v2, v7, :cond_7

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 163
    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {v1, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 164
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 165
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: Not inserting old element (%s)"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 174
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 166
    :cond_f
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 167
    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->d(Lcom/facebook/orca/threads/Message;)V

    .line 168
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: Not inserting old element (%s)"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    goto :goto_8

    .line 170
    :cond_10
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "MERGE: Inserting missing old element (%s)"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 171
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 172
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_8

    .line 179
    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "MERGE: Inserting new element (%s)"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    invoke-virtual {v10}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    .line 180
    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 181
    invoke-virtual {v9, v10}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    .line 182
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_6

    .line 189
    :cond_12
    :goto_9
    if-ge v2, v7, :cond_14

    .line 190
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 191
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 192
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "MERGE: Not inserting old element (%s)"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 198
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 199
    goto :goto_9

    .line 194
    :cond_13
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "MERGE: inserting old element (%s)"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 195
    invoke-virtual {v8, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 196
    invoke-virtual {v9, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_a

    .line 201
    :cond_14
    new-instance v1, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    move-object/from16 p1, v1

    goto/16 :goto_0

    :cond_15
    move v1, v2

    goto/16 :goto_2
.end method

.method private static a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 255
    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 260
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 261
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 211
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    .line 212
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 215
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :cond_1
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Z)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method
