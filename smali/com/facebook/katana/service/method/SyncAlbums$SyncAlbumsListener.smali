.class public Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;
.super Ljava/lang/Object;
.source "SyncAlbums.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/facebook/katana/service/method/SyncAlbums;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/service/method/SyncAlbums;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->a:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v0, v0, Lcom/facebook/katana/service/method/SyncAlbums;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v0, v0, Lcom/facebook/katana/service/method/SyncAlbums;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V

    .line 100
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v4}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Lcom/facebook/katana/service/method/SyncAlbums;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc8

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v4}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Lcom/facebook/katana/service/method/SyncAlbums;Z)Z

    move-object/from16 v4, p1

    .line 51
    check-cast v4, Lcom/facebook/katana/service/method/FqlGetAlbums;

    iget-object v4, v4, Lcom/facebook/katana/service/method/FqlGetAlbums;->a:Ljava/util/List;

    .line 54
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v5}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x46

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v5}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Lcom/facebook/katana/service/method/SyncAlbums;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 57
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->a:Z

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v4}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Lcom/facebook/katana/service/method/SyncAlbums;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v4, v4, Lcom/facebook/katana/service/method/SyncAlbums;->o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v5}, Lcom/facebook/katana/service/method/SyncAlbums;->c(Lcom/facebook/katana/service/method/SyncAlbums;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v7}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Landroid/content/ContentResolver;JLjava/util/Collection;Z)V

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v4, v4, Lcom/facebook/katana/service/method/SyncAlbums;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/facebook/katana/service/method/ServiceOperationListener;->b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 93
    :goto_1
    return-void

    .line 49
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 68
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v5, v5, Lcom/facebook/katana/service/method/SyncAlbums;->o:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v6}, Lcom/facebook/katana/service/method/SyncAlbums;->c(Lcom/facebook/katana/service/method/SyncAlbums;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v4, v8}, Lcom/facebook/katana/service/method/SyncAlbums;->a(Landroid/content/ContentResolver;JLjava/util/Collection;Z)V

    .line 71
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/model/FacebookAlbum;

    .line 72
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v6}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v4}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-long v12, v4

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v4}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v5}, Lcom/facebook/katana/service/method/SyncAlbums;->c(Lcom/facebook/katana/service/method/SyncAlbums;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v4}, Lcom/facebook/katana/service/method/SyncAlbums;->b(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 78
    const-wide/16 v4, 0x1

    sub-long/2addr v12, v4

    .line 82
    :cond_5
    const-wide/16 v14, -0x1

    .line 83
    const-wide/16 v4, 0x46

    cmp-long v4, v12, v4

    if-gez v4, :cond_6

    .line 84
    const-wide/16 v14, 0x14

    .line 88
    :cond_6
    new-instance v4, Lcom/facebook/katana/service/method/FqlGetAlbums;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    iget-object v5, v5, Lcom/facebook/katana/service/method/SyncAlbums;->o:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v6}, Lcom/facebook/katana/service/method/SyncAlbums;->d(Lcom/facebook/katana/service/method/SyncAlbums;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v7}, Lcom/facebook/katana/service/method/SyncAlbums;->e(Lcom/facebook/katana/service/method/SyncAlbums;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v8}, Lcom/facebook/katana/service/method/SyncAlbums;->c(Lcom/facebook/katana/service/method/SyncAlbums;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/katana/service/method/SyncAlbums$SyncAlbumsListener;->b:Lcom/facebook/katana/service/method/SyncAlbums;

    invoke-static {v10}, Lcom/facebook/katana/service/method/SyncAlbums;->f(Lcom/facebook/katana/service/method/SyncAlbums;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p0

    invoke-direct/range {v4 .. v15}, Lcom/facebook/katana/service/method/FqlGetAlbums;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ)V

    .line 91
    invoke-virtual {v4}, Lcom/facebook/katana/service/method/ApiMethod;->a()V

    goto/16 :goto_1
.end method
