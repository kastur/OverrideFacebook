.class public Lcom/facebook/katana/service/method/FqlGetStream;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlGetStream.java"


# static fields
.field protected static a:Ljava/lang/String;

.field private static f:Lcom/facebook/katana/model/FacebookStreamType;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "id IN (SELECT actor_id FROM #posts) OR id IN (SELECT target_id FROM #posts) OR id IN (SELECT comments.comment_list.fromid FROM #posts) OR id in (SELECT tagged_ids FROM #posts)"

    sput-object v0, Lcom/facebook/katana/service/method/FqlGetStream;->a:Ljava/lang/String;

    .line 143
    const-string v0, "page_id IN (SELECT page_id FROM checkin WHERE post_id IN (SELECT post_id FROM #posts))"

    sput-object v0, Lcom/facebook/katana/service/method/FqlGetStream;->h:Ljava/lang/String;

    .line 150
    const-string v0, "page_id IN (SELECT page_id FROM #checkin_pages)"

    sput-object v0, Lcom/facebook/katana/service/method/FqlGetStream;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ[JJLjava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)V
    .locals 14
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
    .line 82
    const/4 v11, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    move/from16 v12, p13

    move-object/from16 v13, p14

    invoke-static/range {v0 .. v13}, Lcom/facebook/katana/service/method/FqlGetStream;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JJJJLjava/lang/String;[Ljava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J[Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p7

    array-length v13, v0

    sget-object v14, Lcom/facebook/katana/service/method/FqlGetStream;->f:Lcom/facebook/katana/model/FacebookStreamType;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v9, p5

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v14}, Lcom/facebook/katana/service/method/FqlGetStream;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JJJJLjava/lang/String;[Ljava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 123
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/LinkedHashMap;)V
    .locals 6
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
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 102
    return-void
.end method

.method private a(JLjava/util/Map;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Lcom/facebook/katana/model/FacebookProfile;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 284
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    move-object v0, v4

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 289
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetStream;->o:Landroid/content/Context;

    const v2, 0x7f0b01f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JJJJLjava/lang/String;[Ljava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)Ljava/util/LinkedHashMap;
    .locals 20
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "[JJJJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/katana/model/FacebookStreamType;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sput-object p13, Lcom/facebook/katana/service/method/FqlGetStream;->f:Lcom/facebook/katana/model/FacebookStreamType;

    .line 159
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    const-string v19, "posts"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;

    const/4 v6, 0x0

    sget-object v17, Lcom/facebook/katana/service/method/FqlGetStream;->f:Lcom/facebook/katana/model/FacebookStreamType;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v11, p3

    move-wide/from16 v12, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v2 .. v17}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ[JJLjava/lang/String;[Ljava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v8, "profiles"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetProfile;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/katana/service/method/FqlGetStream;->a:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v9, "checkin_pages"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetPages;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/katana/service/method/FqlGetStream;->h:Ljava/lang/String;

    const-class v8, Lcom/facebook/katana/model/FacebookPage;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/katana/service/method/FqlGetPages;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v8, "places"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetPlaces;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/katana/service/method/FqlGetStream;->i:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetPlaces;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v8, "deals"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetDeals;

    const/4 v6, 0x0

    const-string v7, "creator_id IN (SELECT page_id FROM #places)"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetDeals;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v8, "deal_status"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    const/4 v6, 0x0

    const-string v7, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetDealStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v8, "deal_history"

    new-instance v2, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    const/4 v6, 0x0

    const-string v7, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlGetDealHistory;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object v18
.end method


# virtual methods
.method protected a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 14
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 212
    const-string v0, "posts"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;

    invoke-static {v0}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->a(Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;)Ljava/util/List;

    move-result-object v5

    .line 214
    const-string v0, "profiles"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetProfile;->h()Ljava/util/Map;

    move-result-object v6

    .line 217
    const/4 v3, 0x0

    .line 219
    const/4 v2, 0x0

    .line 221
    const-string v0, "checkin_pages"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPages;

    .line 223
    const-string v1, "places"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetPlaces;

    .line 225
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPages;->h()Ljava/util/Map;

    move-result-object v7

    .line 227
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetPlaces;->h()Ljava/util/Map;

    move-result-object v4

    .line 228
    const-string v0, "deals"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDeals;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDeals;->h()Ljava/util/Map;

    move-result-object v8

    .line 230
    const-string v0, "deal_status"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealStatus;->h()Ljava/util/Map;

    move-result-object v9

    .line 233
    const-string v0, "deal_history"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetStream;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealHistory;->h()Ljava/util/Map;

    move-result-object v10

    .line 239
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 243
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPage;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookPage;)V

    .line 244
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookDeal;

    .line 245
    if-eqz v1, :cond_0

    .line 246
    iget-wide v2, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookDealStatus;

    .line 248
    iget-wide v12, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookDealHistory;

    .line 250
    iput-object v3, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealHistory:Lcom/facebook/katana/model/FacebookDealHistory;

    .line 251
    iput-object v2, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealStatus:Lcom/facebook/katana/model/FacebookDealStatus;

    .line 253
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookDeal;)V

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x1

    move-object v2, v4

    move v3, v0

    .line 258
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    .line 260
    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    invoke-direct {p0, v7, v8, v6}, Lcom/facebook/katana/service/method/FqlGetStream;->a(JLjava/util/Map;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPost;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 261
    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookPost;->targetId:J

    invoke-direct {p0, v7, v8, v6}, Lcom/facebook/katana/service/method/FqlGetStream;->a(JLjava/util/Map;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPost;->b(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 262
    invoke-virtual {v0, v6}, Lcom/facebook/katana/model/FacebookPost;->a(Ljava/util/Map;)V

    .line 264
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPost$Comment;

    .line 265
    iget-wide v8, v1, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    invoke-direct {p0, v8, v9, v6}, Lcom/facebook/katana/service/method/FqlGetStream;->a(JLjava/util/Map;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/facebook/katana/model/FacebookPost$Comment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_2

    .line 268
    :cond_4
    if-eqz v3, :cond_3

    .line 269
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-wide v7, v1, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPageId:J

    .line 274
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookCheckinDetails;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    goto :goto_1

    .line 279
    :cond_5
    iput-object v5, p0, Lcom/facebook/katana/service/method/FqlGetStream;->g:Ljava/util/List;

    .line 280
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetStream;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
