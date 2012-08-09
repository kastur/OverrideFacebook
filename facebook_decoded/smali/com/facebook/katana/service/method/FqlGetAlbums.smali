.class public Lcom/facebook/katana/service/method/FqlGetAlbums;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlGetAlbums.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object/from16 v5, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/service/method/FqlGetAlbums;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;JJ)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 31
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;JJ)Ljava/util/LinkedHashMap;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    const/4 v3, 0x0

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    if-nez p5, :cond_3

    .line 45
    const/4 v2, 0x1

    move v14, v2

    .line 56
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v3, ","

    sget-object v5, Lcom/facebook/katana/util/StringUtils;->a:Lcom/facebook/katana/util/StringUtils$StringProcessor;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v3, v5, v6}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    :goto_1
    if-eqz p5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 66
    :cond_0
    const-string v16, "album_info"

    new-instance v2, Lcom/facebook/katana/service/method/PhotosGetAlbums;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Lcom/facebook/katana/service/method/PhotosGetAlbums;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v9, "album_cover"

    new-instance v2, Lcom/facebook/katana/service/method/PhotosGetPhotos;

    const/4 v6, 0x0

    const-string v7, "#album_info"

    const-string v8, "cover_pid"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/katana/service/method/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    if-eqz v14, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_2

    .line 77
    const-string v9, "tagged_photos"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v15, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "photo_tag"

    const-string v3, "pid"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "subject="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "created DESC"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/facebook/katana/service/method/PhotosGetPhotos;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 83
    const-string v8, "tagged_photos_cover"

    new-instance v2, Lcom/facebook/katana/service/method/PhotosGetPhotos;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v15, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    return-object v15

    .line 47
    :cond_3
    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v6, p5, v3

    .line 48
    move-wide/from16 v0, p3

    invoke-static {v6, v0, v1}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_4

    .line 49
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 51
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 61
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_6
    move v14, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 96
    const-string v0, "album_info"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetAlbums;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PhotosGetAlbums;

    .line 97
    const-string v1, "album_cover"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/FqlGetAlbums;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/PhotosGetPhotos;

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PhotosGetAlbums;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetAlbums;->a:Ljava/util/List;

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/PhotosGetPhotos;->h()Ljava/util/List;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetAlbums;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/AlbumSyncModel;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 111
    :cond_0
    :goto_0
    const-string v0, "tagged_photos"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetAlbums;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->h()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookAlbum;

    .line 117
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetAlbums;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "tagged_photos_cover"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/FqlGetAlbums;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/PhotosGetPhotos;

    .line 122
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 124
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPhoto;

    .line 126
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/katana/model/FacebookAlbum;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookAlbum;->b(Ljava/lang/String;)V

    .line 131
    :cond_1
    return-void

    .line 107
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetAlbums;->a:Ljava/util/List;

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/PhotosGetPhotos;->h()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
