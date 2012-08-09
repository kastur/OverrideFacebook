.class public Lcom/facebook/katana/model/FacebookPhotoTag;
.super Lcom/facebook/katana/model/FacebookPhotoTagBase;
.source "FacebookPhotoTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:D

.field private final d:J

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoTag$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookPhotoTag$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookPhotoTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;-><init>()V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->d:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->g:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->a:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->f:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->b:D

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->c:D

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JDDJLjava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const-wide/16 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Ljava/lang/String;JDDJLjava/lang/String;J)V

    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JDDJLjava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->a:Ljava/lang/String;

    .line 131
    iput-wide p2, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    .line 132
    iput-wide p4, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->b:D

    .line 133
    iput-wide p6, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->c:D

    .line 134
    iput-wide p8, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->d:J

    .line 135
    iput-object p10, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->f:Ljava/lang/String;

    .line 136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->g:J

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 24
    .parameter

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;-><init>()V

    .line 52
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 53
    const-wide/16 v8, -0x1

    const-wide/16 v6, -0x1

    .line 54
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-wide/from16 v18, v4

    move-wide/from16 v3, v18

    move-wide/from16 v20, v6

    move-wide/from16 v5, v20

    move-wide/from16 v22, v8

    move-wide/from16 v7, v22

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    .line 56
    :goto_0
    sget-object v13, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v12, v13, :cond_7

    .line 57
    sget-object v13, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v12, v13, :cond_3

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v12

    .line 59
    const-string v13, "pid"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v11

    .line 83
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v12

    goto :goto_0

    .line 61
    :cond_1
    const-string v13, "subject"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 64
    :cond_2
    const-string v13, "text"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 66
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v12}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v13

    .line 70
    sget-object v14, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v12, v14, :cond_4

    .line 71
    const-string v12, "created"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v7

    .line 77
    :cond_4
    :goto_2
    const-string v12, "xcoord"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->w()F

    move-result v3

    float-to-double v3, v3

    goto :goto_1

    .line 73
    :cond_5
    const-string v12, "object_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v5

    goto :goto_2

    .line 79
    :cond_6
    const-string v12, "ycoord"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->w()F

    move-result v1

    float-to-double v1, v1

    goto :goto_1

    .line 86
    :cond_7
    invoke-static {v10}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 90
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    .line 97
    :goto_3
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->a:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->b:D

    .line 99
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->c:D

    .line 100
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->d:J

    .line 101
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->f:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->g:J

    .line 103
    return-void

    .line 94
    :cond_8
    invoke-static {v10}, Lcom/facebook/katana/model/FacebookPhotoTag;->a(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 223
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    return-wide v0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->b:D

    return-wide v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->c:D

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->g:J

    return-wide v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPhotoTag;->b()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPhotoTag;->c()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 203
    const-string v1, "tag_uid"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const-string v1, "tag_text"

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, ""

    const-string v2, "inconceivable JSON exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 257
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoTag;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 258
    return-void
.end method
