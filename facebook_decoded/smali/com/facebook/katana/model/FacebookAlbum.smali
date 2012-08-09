.class public Lcom/facebook/katana/model/FacebookAlbum;
.super Ljava/lang/Object;
.source "FacebookAlbum.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private final n:J

.field private final o:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BJ[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/katana/model/FacebookAlbum;->m:Z

    .line 194
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookAlbum;->a:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookAlbum;->b:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookAlbum;->l:Ljava/lang/String;

    .line 197
    iput-wide p4, p0, Lcom/facebook/katana/model/FacebookAlbum;->c:J

    .line 198
    iput-object p6, p0, Lcom/facebook/katana/model/FacebookAlbum;->d:Ljava/lang/String;

    .line 199
    iput-wide p7, p0, Lcom/facebook/katana/model/FacebookAlbum;->e:J

    .line 200
    iput-wide p9, p0, Lcom/facebook/katana/model/FacebookAlbum;->f:J

    .line 201
    iput-object p11, p0, Lcom/facebook/katana/model/FacebookAlbum;->g:Ljava/lang/String;

    .line 202
    iput-object p12, p0, Lcom/facebook/katana/model/FacebookAlbum;->h:Ljava/lang/String;

    .line 203
    move/from16 v0, p14

    iput v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->i:I

    .line 205
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->j:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->k:Ljava/lang/String;

    .line 207
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->n:J

    .line 209
    if-eqz p20, :cond_0

    move-object/from16 v0, p20

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const/16 p20, 0x0

    :cond_1
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->o:[Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 32
    .parameter

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/facebook/katana/model/FacebookAlbum;->m:Z

    .line 94
    const/16 v21, 0x0

    .line 95
    const-wide/16 v19, -0x1

    .line 96
    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    .line 97
    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 98
    const-wide/16 v11, -0x1

    const-wide/16 v9, -0x1

    .line 99
    const/4 v8, -0x1

    .line 100
    const/4 v7, -0x1

    .line 101
    const/4 v6, 0x0

    .line 102
    const-wide/16 v4, -0x1

    .line 104
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    move-wide/from16 v3, v24

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-wide/from16 v26, v9

    move-wide/from16 v8, v26

    move-wide/from16 v28, v11

    move-wide/from16 v10, v28

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v30, v19

    move-wide/from16 v18, v30

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    .line 105
    :goto_0
    sget-object v22, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 106
    sget-object v22, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v21

    .line 108
    const-string v22, "aid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v20

    .line 145
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v21

    goto :goto_0

    .line 110
    :cond_1
    const-string v22, "cover_pid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 111
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 112
    :cond_2
    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 114
    :cond_3
    const-string v22, "description"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 115
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 116
    :cond_4
    const-string v22, "location"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 117
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 118
    :cond_5
    const-string v22, "link"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 119
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_6
    const-string v22, "visible"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 122
    :cond_7
    const-string v22, "type"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 123
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 124
    :cond_8
    const-string v22, "error_msg"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 125
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 126
    :cond_9
    const-string v22, "owner"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_1

    .line 129
    :cond_a
    sget-object v22, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v21

    .line 131
    const-string v22, "owner"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 132
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v18

    goto/16 :goto_1

    .line 133
    :cond_b
    const-string v22, "created"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v10

    goto/16 :goto_1

    .line 135
    :cond_c
    const-string v22, "modified"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v8

    goto/16 :goto_1

    .line 137
    :cond_d
    const-string v22, "size"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v7

    goto/16 :goto_1

    .line 139
    :cond_e
    const-string v22, "error_code"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v6

    goto/16 :goto_1

    .line 141
    :cond_f
    const-string v22, "object_id"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 142
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v3

    goto/16 :goto_1

    .line 147
    :cond_10
    if-lez v6, :cond_11

    .line 148
    new-instance v3, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v3, v6, v5}, Lcom/facebook/katana/model/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 151
    :cond_11
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/model/FacebookAlbum;->a:Ljava/lang/String;

    .line 152
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/model/FacebookAlbum;->c:J

    .line 153
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/model/FacebookAlbum;->d:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/facebook/katana/model/FacebookAlbum;->b:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/facebook/katana/model/FacebookAlbum;->e:J

    .line 156
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/facebook/katana/model/FacebookAlbum;->f:J

    .line 157
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/model/FacebookAlbum;->g:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/facebook/katana/model/FacebookAlbum;->h:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p0

    iput v7, v0, Lcom/facebook/katana/model/FacebookAlbum;->i:I

    .line 161
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/facebook/katana/model/FacebookAlbum;->j:Ljava/lang/String;

    .line 164
    if-nez v12, :cond_12

    .line 165
    const-string v5, "normal"

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/facebook/katana/model/FacebookAlbum;->k:Ljava/lang/String;

    .line 169
    :goto_2
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/facebook/katana/model/FacebookAlbum;->n:J

    .line 171
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/facebook/katana/model/FacebookAlbum;->o:[Ljava/lang/String;

    .line 172
    return-void

    .line 167
    :cond_12
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/facebook/katana/model/FacebookAlbum;->k:Ljava/lang/String;

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookAlbum;
    .locals 24
    .parameter
    .parameter

    .prologue
    .line 398
    const/4 v8, 0x0

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/model/FacebookAlbum$AlbumQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 401
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const/16 v22, 0x0

    .line 403
    const/16 v2, 0xe

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 407
    :cond_0
    new-instance v2, Lcom/facebook/katana/model/FacebookAlbum;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v13, 0x8

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    const/16 v20, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-direct/range {v2 .. v22}, Lcom/facebook/katana/model/FacebookAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BJ[Ljava/lang/String;)V

    .line 424
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 425
    return-object v2

    :cond_1
    move-object v2, v8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 373
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->f:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 374
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookAlbum;->l:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/facebook/katana/model/FacebookAlbum;->m:Z

    .line 360
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookAlbum;->b:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->c:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->e:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->f:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->i:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->n:J

    return-wide v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/facebook/katana/model/FacebookAlbum;->m:Z

    return v0
.end method
