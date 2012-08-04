.class Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;
.super Ljava/lang/Thread;
.source "ComposerActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/ComposerActivity;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/net/Uri;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2093
    iput-object p2, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->c:Landroid/net/Uri;

    .line 2094
    iput-object p3, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->b:Ljava/lang/String;

    .line 2095
    iput-object p4, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->d:Ljava/lang/String;

    .line 2096
    iput-wide p5, p0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->e:J

    .line 2097
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 2102
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->a()V

    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->q(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->q(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v6

    .line 2106
    :goto_0
    const-wide/16 v13, -0x1

    .line 2107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->r(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->r(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v2

    iget-wide v13, v2, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    .line 2114
    :cond_0
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->u(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->v(Lcom/facebook/katana/ComposerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->w(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->w(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->w(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2119
    new-instance v2, Lcom/facebook/katana/model/FacebookPhotoWithTag;

    invoke-direct {v2, v4, v5}, Lcom/facebook/katana/model/FacebookPhotoWithTag;-><init>(J)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2104
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2109
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->s(Lcom/facebook/katana/ComposerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->t(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->t(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_1

    .line 2123
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Composing a photo with a Vault Image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v3}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->e(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v4}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->b:Ljava/lang/String;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->e:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJZJLjava/util/List;JLjava/lang/String;)Ljava/lang/String;

    .line 2166
    :goto_3
    return-void

    .line 2134
    :cond_4
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resized_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/facebook/katana/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2137
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    const/16 v10, 0x3c0

    const/16 v11, 0x3c0

    const/16 v12, 0x64

    invoke-static/range {v7 .. v12}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;III)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const-wide/16 v20, -0x1

    const-wide/16 v22, -0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->e:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->x(Lcom/facebook/katana/ComposerActivity;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v18, v6

    move-object/from16 v25, v15

    move-wide/from16 v26, v13

    invoke-static/range {v16 .. v31}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;JLjava/lang/String;JLjava/lang/String;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->x(Lcom/facebook/katana/ComposerActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v3}, Lcom/facebook/katana/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2150
    :catch_0
    move-exception v2

    .line 2151
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->c()V

    .line 2152
    const-string v3, "photo upload error"

    const-string v4, "Failed composer photo upload (step=%s, file=%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->c:Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    new-instance v4, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads$1;-><init>(Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;)V

    invoke-virtual {v3, v4}, Lcom/facebook/katana/ComposerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v3}, Lcom/facebook/katana/ComposerActivity;->r()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error starting upload: "

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
