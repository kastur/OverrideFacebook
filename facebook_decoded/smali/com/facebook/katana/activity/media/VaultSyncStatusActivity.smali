.class public Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "VaultSyncStatusActivity.java"


# static fields
.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 229
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->finish()V

    .line 235
    :cond_1
    const-string v0, "%s DESC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "date_taken"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 239
    if-nez v1, :cond_2

    .line 241
    const-string v0, "MediaPickerActivity"

    const-string v1, "no vault cursor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    :goto_0
    return-void

    .line 245
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v11

    .line 248
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    new-instance v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    invoke-direct {v0, v1}, Lcom/facebook/katana/provider/VaultImageProviderRow;-><init>(Landroid/database/Cursor;)V

    .line 250
    iget-object v2, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "alexli"

    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 257
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 260
    if-nez v12, :cond_4

    .line 261
    const-string v0, "MediaPickerActivity"

    const-string v1, "no MediaStore cursor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v13

    .line 266
    :goto_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    move-object v10, v0

    .line 274
    :goto_3
    new-instance v0, Lcom/facebook/katana/model/MediaItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v10, :cond_6

    iget-wide v8, v10, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    :goto_4
    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/model/MediaItem;-><init>(JLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 281
    new-instance v1, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;

    invoke-direct {v1, v0, v10}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;-><init>(Lcom/facebook/katana/model/MediaItem;Lcom/facebook/katana/provider/VaultImageProviderRow;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 284
    :catchall_1
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 271
    :cond_5
    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_3

    .line 274
    :cond_6
    const-wide/16 v8, -0x1

    goto :goto_4

    .line 284
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 287
    new-instance v0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;

    invoke-direct {v0, p0, p0, v13}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;-><init>(Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;->a(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method
