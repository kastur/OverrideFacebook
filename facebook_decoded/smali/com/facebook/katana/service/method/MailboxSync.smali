.class public Lcom/facebook/katana/service/method/MailboxSync;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "MailboxSync.java"


# static fields
.field private static r:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/MailboxSync;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIIZJLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
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
    .line 94
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 97
    iput-object p3, p0, Lcom/facebook/katana/service/method/MailboxSync;->a:Ljava/lang/String;

    .line 98
    iput p4, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    .line 99
    iput p5, p0, Lcom/facebook/katana/service/method/MailboxSync;->g:I

    .line 100
    iput p6, p0, Lcom/facebook/katana/service/method/MailboxSync;->h:I

    .line 101
    iput-boolean p7, p0, Lcom/facebook/katana/service/method/MailboxSync;->i:Z

    .line 102
    iput-wide p8, p0, Lcom/facebook/katana/service/method/MailboxSync;->j:J

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/MailboxSync;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 490
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const/4 v0, 0x1

    .line 492
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 493
    if-eqz v1, :cond_0

    .line 494
    const/4 v1, 0x0

    .line 498
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 496
    :cond_0
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 500
    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->i:Z

    if-eqz v0, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 215
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 219
    monitor-enter p0

    move-object v0, p0

    move-object v1, p1

    .line 220
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 222
    invoke-direct {p0, v5, v6, p3}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    .line 224
    if-nez p4, :cond_0

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    const-string v0, "MailboxSync"

    const-string v1, "still missing users after fetching users!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    if-nez p4, :cond_1

    .line 230
    invoke-direct {p0, p2}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/Map;)V

    .line 233
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_3

    .line 234
    :cond_2
    invoke-direct {p0, v2, v3, v4, p3}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 236
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    return-object v6

    .line 213
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 469
    if-lez v2, :cond_1

    .line 470
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 471
    new-array v4, v2, [Landroid/content/ContentValues;

    .line 473
    const/4 v0, 0x0

    .line 474
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 475
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v4, v1

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 477
    const-string v7, "id"

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v7, "display_name"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v7, "profile_image_url"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v7, "type"

    iget v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " users to the users table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/facebook/katana/provider/MailboxProvider;->e:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 485
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p4, :cond_2

    const/4 v1, 0x1

    move v7, v1

    .line 265
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 268
    if-eqz v7, :cond_3

    .line 269
    const/4 v1, 0x0

    move-object v2, v1

    .line 274
    :goto_1
    const/4 v1, 0x1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 276
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookMailboxThread;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    if-eqz v3, :cond_4

    .line 278
    const/4 v3, 0x0

    .line 282
    :cond_1
    :goto_3
    if-nez v7, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookMailboxThread;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 259
    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto :goto_0

    .line 271
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 272
    const-string v2, "tid IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v1

    goto :goto_1

    .line 279
    :cond_4
    if-nez v7, :cond_1

    .line 280
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 286
    :cond_5
    if-nez v7, :cond_6

    .line 287
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :cond_6
    if-eqz v7, :cond_d

    const/4 v4, 0x0

    .line 294
    :goto_4
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 295
    iget v2, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    invoke-static {v2}, Lcom/facebook/katana/provider/MailboxProvider;->a(I)Landroid/net/Uri;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/facebook/katana/service/method/MailboxSync$ThreadsQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 298
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 299
    const-string v1, "tid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 301
    const-string v1, "last_update"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 304
    :cond_7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 305
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 306
    if-eqz v1, :cond_e

    .line 307
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookMailboxThread;->g()J

    move-result-wide v9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    .line 308
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 320
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 323
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 328
    :cond_a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to change"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 331
    :cond_b
    if-eqz p4, :cond_c

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 335
    :cond_c
    move-object/from16 v0, p5

    invoke-static {p1, v0}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/List;Ljava/util/Set;)V

    .line 336
    return-void

    .line 289
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 311
    :cond_e
    if-eqz v7, :cond_f

    .line 312
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 316
    :cond_f
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->b(Z)V

    goto/16 :goto_5
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 356
    const/4 v0, 0x0

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Landroid/content/ContentValues;

    .line 358
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    const v2, 0x7f0b024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 360
    iget v1, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    iget-wide v2, p0, Lcom/facebook/katana/service/method/MailboxSync;->j:J

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookMailboxThread;->a(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v8, v6

    .line 363
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 368
    :cond_1
    sget-object v0, Lcom/facebook/katana/provider/MailboxProvider;->a:Landroid/net/Uri;

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 373
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 374
    iget v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->b(I)Landroid/net/Uri;

    move-result-object v1

    .line 375
    iget v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->c(I)Landroid/net/Uri;

    move-result-object v2

    .line 376
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 377
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 379
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 380
    const-string v5, "subject"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v5, "snippet"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v5, "other_party"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v5, "msg_count"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v5, "unread_count"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v5, "last_update"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    const-string v5, "participants"

    iget-object v6, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    const v8, 0x7f0b024f

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p0, Lcom/facebook/katana/service/method/MailboxSync;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, p4, v6, v8}, Lcom/facebook/katana/model/FacebookMailboxThread;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updating "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 398
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->a()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v0, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 403
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 404
    const-string v0, "tid"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v0, " IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const/4 v1, 0x1

    .line 407
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 408
    if-eqz v1, :cond_5

    .line 409
    const/4 v1, 0x0

    .line 413
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->a()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 411
    :cond_5
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 415
    :cond_6
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    :cond_7
    if-eqz p3, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 425
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 426
    const-string v0, "tid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v0, " IN("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const/4 v0, 0x1

    .line 429
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 430
    if-eqz v1, :cond_8

    .line 431
    const/4 v1, 0x0

    .line 435
    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 433
    :cond_8
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 437
    :cond_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    iget v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 444
    const-string v0, "tid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v0, " IN("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const/4 v0, 0x1

    .line 447
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 448
    if-eqz v1, :cond_a

    .line 449
    const/4 v1, 0x0

    .line 453
    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 451
    :cond_a
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 455
    :cond_b
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 459
    iget v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->c(I)Landroid/net/Uri;

    move-result-object v0

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/facebook/katana/provider/MailboxProvider;->g:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    :cond_c
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookMailboxThread;

    .line 342
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThread;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 608
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 609
    const-string v1, "id"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 611
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->e:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/method/MailboxSync$ProfilesQuery;->a:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 615
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 617
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 621
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 622
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 626
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/Collection;)V

    .line 627
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 518
    move-object/from16 v0, p2

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "looking for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " users"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "have "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cached users"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 523
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 525
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v8

    .line 526
    if-lez v8, :cond_4

    .line 528
    const-string v2, "id"

    invoke-static {v2, p1}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 530
    sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->e:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/katana/service/method/MailboxSync$ProfilesQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 533
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    const-string v2, "id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 536
    const-string v2, "display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 538
    const-string v2, "profile_image_url"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 542
    :cond_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 544
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 547
    new-instance v2, Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 551
    move-object/from16 v0, p3

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " users in the users table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 558
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v7

    .line 562
    if-lez v7, :cond_4

    .line 563
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 564
    const-string v2, "user_id"

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 566
    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/katana/service/method/MailboxSync$FriendsQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 568
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    const-string v1, "user_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 571
    const-string v1, "display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 573
    const-string v1, "user_image_url"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 576
    :cond_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 581
    new-instance v1, Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 585
    move-object/from16 v0, p3

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 590
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 592
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " users in the friends table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSync;->b(Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, v8}, Lcom/facebook/katana/service/method/MailboxSync;->a(Ljava/util/Collection;)V

    .line 598
    :cond_4
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    sget-boolean v0, Lcom/facebook/katana/service/method/MailboxSync;->r:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "MailboxSync"

    invoke-static {v0, p0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 117
    new-instance v7, Lcom/facebook/katana/service/method/MailboxSync$1;

    invoke-direct {v7, p0}, Lcom/facebook/katana/service/method/MailboxSync$1;-><init>(Lcom/facebook/katana/service/method/MailboxSync;)V

    .line 190
    new-instance v0, Lcom/facebook/katana/service/method/MailboxGetThreads;

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/MailboxSync;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/MailboxSync;->a:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/katana/service/method/MailboxSync;->f:I

    iget v5, p0, Lcom/facebook/katana/service/method/MailboxSync;->g:I

    iget v6, p0, Lcom/facebook/katana/service/method/MailboxSync;->h:I

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/MailboxGetThreads;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIILcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/MailboxGetThreads;->a()V

    .line 192
    return-void
.end method
