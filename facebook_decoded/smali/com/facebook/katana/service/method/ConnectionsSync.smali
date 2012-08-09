.class public Lcom/facebook/katana/service/method/ConnectionsSync;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "ConnectionsSync.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookFriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookFriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/String;

.field private t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 78
    iput-object p3, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->a:Ljava/lang/String;

    .line 79
    iput-wide p4, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->f:J

    .line 80
    iput-object p6, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->g:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->j:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->r:Ljava/util/List;

    .line 85
    const-string v0, "un"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->s:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookFriendInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 217
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 219
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    invoke-static {v0, v1, p1, v4}, Lcom/facebook/katana/platform/PlatformStorage;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-eqz v0, :cond_2

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/ConnectionsSync;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    .line 247
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookFriendInfo;

    .line 248
    iget-wide v6, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mUserId:J

    .line 249
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v4, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    .line 253
    const-string v9, "user_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v9, "cell"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v9, "other"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v9, "email"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v9, "first_name"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v9, "last_name"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v9, "display_name"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v9, "user_image_url"

    iget-object v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v9, "birthday_month"

    iget v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayMonth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v9, "birthday_day"

    iget v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v9, "birthday_year"

    iget v10, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayYear:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v9, "hash"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookFriendInfo;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 269
    iget-object v8, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 272
    :cond_4
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 278
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 280
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookFriendInfo;

    .line 285
    iget-object v5, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 286
    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mUserId:J

    .line 291
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string v7, "first_name"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v7, "last_name"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v7, "display_name"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v7, "user_image_url"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v7, "birthday_month"

    iget v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v7, "birthday_day"

    iget v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v7, "birthday_year"

    iget v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayYear:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v7, "hash"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookFriendInfo;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v7, "cell"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v7, "other"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v7, "email"

    iget-object v8, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v7, Lcom/facebook/katana/provider/ConnectionsProvider;->e:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 305
    invoke-virtual {v3, v5, v1, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    iget-object v5, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 309
    iget-object v5, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    iget-wide v6, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mUserId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 318
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 319
    const-string v0, "user_id IN("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const/4 v0, 0x1

    .line 321
    iget-object v1, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 322
    if-eqz v1, :cond_8

    move v1, v2

    .line 327
    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 325
    :cond_8
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 329
    :cond_9
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 415
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-eqz v0, :cond_2

    .line 518
    :cond_1
    :goto_1
    return-void

    .line 424
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/facebook/katana/service/method/ConnectionsSync;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-nez v0, :cond_1

    .line 441
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 443
    const/4 v0, 0x0

    .line 444
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Landroid/content/ContentValues;

    .line 445
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;

    .line 446
    iget-wide v7, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mId:J

    .line 447
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    aput-object v9, v6, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 451
    const-string v10, "user_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    const-string v10, "display_name"

    iget-object v11, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v10, "user_image_url"

    iget-object v11, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v10, "connection_type"

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->b()Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v10, "hash"

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->c()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    iget-object v9, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 460
    iget-object v9, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 463
    :cond_4
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 468
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 469
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 471
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;

    .line 476
    iget-object v4, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 477
    iget-wide v6, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mId:J

    .line 482
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 483
    const-string v4, "display_name"

    iget-object v8, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v4, "user_image_url"

    iget-object v8, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v4, "connection_type"

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->b()Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v4, "hash"

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 488
    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->i:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 490
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 493
    iget-object v4, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 494
    iget-object v4, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    iget-wide v6, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mImageUrl:Ljava/lang/String;

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 501
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 503
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 504
    const-string v0, "user_id IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    const/4 v0, 0x1

    .line 506
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 507
    if-eqz v1, :cond_8

    .line 508
    const/4 v1, 0x0

    .line 512
    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 510
    :cond_8
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 514
    :cond_9
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 531
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/method/ConnectionsSync$HashQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 533
    const-string v0, "user_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 534
    const-string v0, "hash"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 535
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 537
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;

    .line 538
    if-nez v0, :cond_0

    .line 539
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->c()J

    move-result-wide v6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 542
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 552
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;

    .line 562
    iget-object v2, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FacebookPageProfile;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 563
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 570
    :goto_2
    return v0

    .line 569
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookFriendInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 345
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookFriendInfo;

    .line 348
    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/method/ConnectionsSync$HashQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 355
    const-string v0, "user_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 356
    const-string v0, "hash"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 357
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 359
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookFriendInfo;

    .line 360
    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->r:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookFriendInfo;->b()J

    move-result-wide v7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    .line 367
    iget-object v5, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->j:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 371
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 374
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 377
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookFriendInfo;

    .line 387
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookFriendInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 400
    :goto_3
    return v0

    .line 398
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 91
    new-instance v0, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->p:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->a:Ljava/lang/String;

    iget-wide v5, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->f:J

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->a()V

    .line 93
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    .line 592
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/16 v1, 0x190

    const-string v2, "Canceled"

    invoke-interface {v0, p0, v1, v2, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->a(Z)V

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    iget-object v0, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->l:Lcom/facebook/katana/net/HttpOperation;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    iget-object v0, v0, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->interrupt()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->t:Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    .line 107
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    .line 108
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->u:Z

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 581
    check-cast p1, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;

    .line 582
    invoke-virtual {p1}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/method/ConnectionsSync;->a(Ljava/util/List;)V

    .line 583
    invoke-virtual {p1}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/ConnectionsSync$FqlGetFriendsAndPages;->j()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/service/method/ConnectionsSync;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/katana/service/method/ConnectionsSync;->h:Ljava/util/Map;

    return-object v0
.end method
