.class public Lcom/facebook/katana/service/method/VideoUpload;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "VideoUpload.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private final a:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/facebook/katana/model/FacebookVideoUploadResponse;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V
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

    .prologue
    .line 115
    const/4 v3, 0x0

    const-string v4, "POST"

    const-string v5, "video.upload"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;)V

    .line 118
    new-instance v1, Lcom/facebook/katana/service/method/VideoUpload$VideoUploadListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/method/VideoUpload$VideoUploadListener;-><init>(Lcom/facebook/katana/service/method/VideoUpload;)V

    iput-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 119
    iput-object p6, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    .line 120
    move/from16 v0, p9

    iput v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->f:I

    .line 122
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "method"

    iget-object v3, p0, Lcom/facebook/katana/service/method/VideoUpload;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "api_key"

    const-string v3, "882a8490361da98702bf97a021ddc14d"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "format"

    const-string v3, "JSON"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "session_key"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-wide/16 v1, -0x1

    cmp-long v1, p7, v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "id"

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    if-eqz p4, :cond_1

    .line 132
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    if-eqz p5, :cond_2

    .line 135
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "description"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    if-eqz p10, :cond_3

    .line 138
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "privacy"

    move-object/from16 v0, p10

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_3
    if-eqz p11, :cond_4

    .line 141
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "tags"

    move-object/from16 v0, p11

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v1, p12, v1

    if-eqz v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v2, "place"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_5
    return-void
.end method

.method private a(Landroid/net/Uri;)J
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_size"

    aput-object v1, v2, v0

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    const-string v1, "_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 19
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
    .line 82
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v18

    .line 83
    new-instance v3, Lcom/facebook/katana/service/method/VideoUpload;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v4

    iget-object v6, v4, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-wide/from16 v15, p9

    invoke-direct/range {v3 .. v17}, Lcom/facebook/katana/service/method/VideoUpload;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 86
    const/16 v7, 0x3e9

    const/16 v8, 0x3fc

    const/4 v9, 0x0

    move-object/from16 v4, v18

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-direct {v3, v4}, Lcom/facebook/katana/service/method/VideoUpload;->b(Ljava/lang/String;)V

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v3, v1, v2}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v4
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/VideoUpload;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/VideoUpload;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/katana/service/method/VideoUpload;->h:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v0, ".3gp"

    .line 185
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 186
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/facebook/katana/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    const-string v2, "content:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 196
    invoke-direct {p0, v2}, Lcom/facebook/katana/service/method/VideoUpload;->a(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 202
    :goto_0
    const-string v2, "media"

    new-instance v5, Lcom/facebook/apache/http/entity/mime/content/InputStreamBody;

    const-string v6, "video/3gpp"

    invoke-direct {v5, v0, v6, v1}, Lcom/facebook/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "method"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/facebook/katana/service/method/VideoUpload;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "v"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    const-string v2, "1.0"

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "api_key"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    const-string v2, "882a8490361da98702bf97a021ddc14d"

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "format"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "format"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "session_key"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "session_key"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "call_id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "call_id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "sig"

    new-instance v1, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/VideoUpload;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/katana/util/FacebookPlatform;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    const-string v1, "id"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    const-string v1, "title"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "title"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 223
    const-string v1, "description"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "description"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "privacy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 228
    const-string v1, "privacy"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "privacy"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "place"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 232
    const-string v1, "place"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "place"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v1, "tags"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 235
    const-string v1, "tags"

    new-instance v2, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->e:Ljava/util/Map;

    const-string v5, "tags"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_6
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/VideoUpload;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/katana/Constants$URL;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x4000

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v5, p0, Lcom/facebook/katana/service/method/VideoUpload;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 243
    iget-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    .line 249
    :cond_7
    :goto_1
    return-void

    .line 198
    :cond_8
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v1, :cond_7

    .line 246
    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 102
    iget-object v5, p0, Lcom/facebook/katana/service/method/VideoUpload;->g:Lcom/facebook/katana/model/FacebookVideoUploadResponse;

    iget-object v1, p0, Lcom/facebook/katana/service/method/VideoUpload;->a:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/katana/service/method/VideoUpload;->f:I

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookVideoUploadResponse;I)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookVideoUploadResponse;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookVideoUploadResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/VideoUpload;->g:Lcom/facebook/katana/model/FacebookVideoUploadResponse;

    .line 255
    return-void
.end method
