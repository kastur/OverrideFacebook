.class public Lcom/facebook/katana/service/method/FqlSyncNotifications;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlSyncNotifications.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    .line 67
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/LinkedHashMap;
    .locals 9
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
            "J)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    const-string v7, "notifications"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetNotifications;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetNotifications;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v8, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "profiles"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetProfile;

    const-string v7, "id IN (select sender_id FROM #notifications)"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object v8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 23

    .prologue
    .line 116
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookNotification;

    .line 120
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    sget-object v3, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/service/method/FqlSyncNotifications$NotificationsQuery;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 128
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "notif_id"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 131
    const-string v2, "object_type"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 133
    const-string v2, "object_id"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 135
    const-string v2, "title"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 137
    const-string v2, "updated"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 139
    const-string v2, "join_data_string"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 141
    const-string v2, "is_read"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 144
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 145
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 146
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 147
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 148
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 149
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 150
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 152
    :goto_1
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookNotification;

    .line 153
    if-nez v2, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookNotification;

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 157
    :cond_4
    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->d()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gtz v19, :cond_6

    :cond_5
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->d()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_8

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->d()J

    move-result-wide v19

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v4, v19, v21

    if-lez v4, :cond_8

    :cond_6
    const/4 v4, 0x1

    .line 162
    :goto_4
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->i()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 164
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->h()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 166
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->e()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 168
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->j()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 170
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookNotification;->g()Z

    move-result v2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x1

    .line 172
    :goto_5
    if-nez v15, :cond_7

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v4, :cond_7

    if-nez v18, :cond_7

    if-eqz v2, :cond_a

    .line 175
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 157
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 170
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 178
    :cond_a
    invoke-interface {v8, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 190
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    :cond_c
    const/4 v2, 0x1

    :goto_6
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 201
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    const-string v3, "notif_id IN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, ","

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->f:Ljava/util/List;

    aput-object v5, v4, v0

    invoke-static {v1, v3, v6, v4}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 208
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    sget-object v3, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/content/ContentValues;

    .line 221
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookNotification;

    .line 222
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v3, v1

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v6, "updated"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->d()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const-string v6, "href"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v6, "is_read"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->g()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 232
    const-string v6, "notif_id"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v6, "sender_id"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v6, "object_id"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v6, "object_type"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v6, "join_data_string"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v6, "icon_url"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v6, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotification;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 245
    if-eqz v0, :cond_1

    .line 246
    iget-object v6, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 247
    const-string v7, "sender_name"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v6, "sender_url"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_2
    sget-object v0, Lcom/facebook/katana/provider/NotificationsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 256
    :cond_3
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 87
    const-string v0, "notifications"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetNotifications;

    .line 89
    const-string v1, "profiles"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetProfile;

    .line 92
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetNotifications;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->h:Ljava/util/List;

    .line 93
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->g:Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlSyncNotifications;->o:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/NotificationsProvider;->a(Landroid/content/Context;J)V

    .line 96
    invoke-direct {p0}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/facebook/katana/service/method/FqlSyncNotifications;->i()V

    .line 100
    :cond_0
    return-void
.end method
