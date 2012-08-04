.class public Lcom/facebook/katana/service/method/PhotosUpload;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PhotosUpload.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private f:Lcom/facebook/katana/model/FacebookPhoto;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;JJZJLjava/lang/String;JLjava/lang/String;)V
    .locals 9
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
    .line 123
    const-string v4, "POST"

    const-string v5, "photos.upload"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;)V

    .line 125
    new-instance v1, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;-><init>(Lcom/facebook/katana/service/method/PhotosUpload;)V

    iput-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 126
    iput-object p5, p0, Lcom/facebook/katana/service/method/PhotosUpload;->a:Ljava/lang/String;

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->g:J

    .line 129
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "method"

    iget-object v3, p0, Lcom/facebook/katana/service/method/PhotosUpload;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "api_key"

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "format"

    const-string v3, "JSON"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "session_key"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "call_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    if-eqz p4, :cond_0

    .line 136
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "caption"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    if-eqz p7, :cond_1

    .line 139
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "aid"

    move-object/from16 v0, p7

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "checkin_id"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, p10, v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "profile_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "published"

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-wide/16 v1, -0x1

    cmp-long v1, p13, v1

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "place"

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_4
    if-eqz p15, :cond_5

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "tags"

    move-object/from16 v0, p15

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    const-wide/16 v1, -0x1

    cmp-long v1, p16, v1

    if-eqz v1, :cond_6

    .line 156
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "target_id"

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_6
    if-eqz p18, :cond_7

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 160
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v2, "privacy"

    move-object/from16 v0, p18

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_7
    return-void
.end method

.method private a(Landroid/net/Uri;)J
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_size"

    aput-object v1, v2, v0

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    const-string v1, "_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    const-string v1, "pid"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "owner"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string v1, "src"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "src_big"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "src_small"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "caption"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "created"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 317
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    sget-object v2, Lcom/facebook/katana/service/method/PhotosUpload$AlbumQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 327
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 329
    const-string v5, "size"

    const-string v6, "size"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-virtual {v0, v1, v4, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 334
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/facebook/katana/service/method/PhotosUpload;
    .locals 3
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "vault_image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iput-wide p1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->g:J

    .line 167
    return-object p0
.end method

.method public final a()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 187
    :try_start_0
    iget-wide v5, p0, Lcom/facebook/katana/service/method/PhotosUpload;->g:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Performing a Vault photo upload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 190
    const-string v0, "vault_image_id"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-wide v5, p0, Lcom/facebook/katana/service/method/PhotosUpload;->g:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :goto_0
    const-string v0, "method"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "v"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    const-string v2, "1.0"

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "api_key"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    const-string v2, "882a8490361da98702bf97a021ddc14d"

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "format"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "format"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "session_key"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "session_key"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "call_id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "call_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "sig"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/PhotosUpload;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/katana/util/FacebookPlatform;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "caption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    const-string v1, "caption"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "caption"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "aid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    const-string v1, "aid"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "aid"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "profile_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    const-string v1, "profile_id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "profile_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "checkin_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 234
    const-string v1, "checkin_id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "checkin_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_3
    const-string v1, "published"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "published"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "place"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 240
    const-string v1, "place"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "place"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "tags"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 243
    const-string v1, "tags"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "tags"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "target_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 246
    const-string v1, "target_id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "target_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v1, "privacy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 249
    const-string v1, "privacy"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->e:Ljava/util/Map;

    const-string v5, "privacy"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_7
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x4000

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v5, p0, Lcom/facebook/katana/service/method/PhotosUpload;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 259
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    .line 265
    :cond_8
    :goto_1
    return-void

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->a:Ljava/lang/String;

    const-string v2, "content:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 196
    invoke-direct {p0, v2}, Lcom/facebook/katana/service/method/PhotosUpload;->a(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 202
    :goto_2
    const-string v2, "media"

    new-instance v5, Lcom/facebook/apache/http/entity/mime/content/InputStreamBody;

    const-string v6, "image/jpeg"

    invoke-direct {v5, v0, v6, v1}, Lcom/facebook/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v1, :cond_8

    .line 262
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 198
    :cond_a
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PhotosUpload;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/katana/service/method/PhotosUpload;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookPhoto;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    .line 286
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PhotosUpload;->i()V

    .line 288
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PhotosUpload;->j()V

    .line 289
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->a()V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    sget-object v0, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->CANCELED:Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, p0, v0, v1, v1}, Lcom/facebook/katana/service/method/PhotosUpload;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 277
    :cond_0
    iput-object v1, p0, Lcom/facebook/katana/service/method/PhotosUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 279
    :cond_1
    return-void
.end method

.method public final h()Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload;->f:Lcom/facebook/katana/model/FacebookPhoto;

    return-object v0
.end method
