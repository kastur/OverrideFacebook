.class public Lcom/facebook/katana/model/FacebookPhoto;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPhoto.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field private mAlbumId:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "aid"
    .end annotation
.end field

.field private mCaption:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "caption"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field private final mCreated:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "created"
    .end annotation
.end field

.field private final mFilename:Ljava/lang/String;

.field private final mImageBytes:[B

.field private final mObjectId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "object_id"
    .end annotation
.end field

.field private final mOwner:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "owner"
    .end annotation
.end field

.field private final mPhotoId:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pid"
    .end annotation
.end field

.field private final mSrcUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "src"
    .end annotation
.end field

.field private final mSrcUrlBig:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "src_big"
    .end annotation
.end field

.field private final mSrcUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "src_small"
    .end annotation
.end field

.field public final position:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "position"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    .line 106
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mOwner:J

    .line 107
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCaption:Ljava/lang/String;

    .line 111
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCreated:J

    .line 112
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mImageBytes:[B

    .line 113
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mObjectId:J

    .line 114
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPhoto;->position:J

    .line 115
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mFilename:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BJJLjava/lang/String;)V
    .locals 1
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
    .line 136
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    .line 139
    iput-wide p3, p0, Lcom/facebook/katana/model/FacebookPhoto;->mOwner:J

    .line 140
    iput-object p5, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCaption:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    .line 143
    iput-object p8, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    .line 144
    iput-wide p9, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCreated:J

    .line 145
    iput-object p11, p0, Lcom/facebook/katana/model/FacebookPhoto;->mImageBytes:[B

    .line 146
    iput-wide p12, p0, Lcom/facebook/katana/model/FacebookPhoto;->mObjectId:J

    .line 147
    iput-wide p14, p0, Lcom/facebook/katana/model/FacebookPhoto;->position:J

    .line 148
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mFilename:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public static a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->d:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 272
    const/4 v8, 0x0

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/model/FacebookPhoto$PhotoQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 275
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    new-instance v2, Lcom/facebook/katana/model/FacebookPhoto;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v13, 0x8

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    const/16 v14, 0xa

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v18, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/facebook/katana/model/FacebookPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BJJLjava/lang/String;)V

    .line 290
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 291
    return-object v2

    :cond_0
    move-object v2, v8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->b:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter

    .prologue
    .line 96
    const-class v0, Lcom/facebook/katana/model/FacebookPhoto;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhoto;

    .line 98
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCaption:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mOwner:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCreated:J

    return-wide v0
.end method

.method public final g()J
    .locals 4

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mCreated:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public final k()[B
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mImageBytes:[B

    return-object v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mObjectId:J

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhoto;->mFilename:Ljava/lang/String;

    return-object v0
.end method
