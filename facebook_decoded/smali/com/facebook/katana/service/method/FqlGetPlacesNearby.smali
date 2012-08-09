.class public Lcom/facebook/katana/service/method/FqlGetPlacesNearby;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlGetPlacesNearby.java"


# instance fields
.field public a:Landroid/location/Location;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public i:J

.field public j:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;JLcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 18
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
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/katana/features/places/PlacesNearby$SearchType;",
            "J",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;",
            "Lcom/facebook/katana/service/method/FqlGetPlacesNearby;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    const/16 v17, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v10, v3

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-wide/from16 v15, p9

    invoke-static/range {v3 .. v16}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;DDDLjava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)Ljava/util/LinkedHashMap;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 79
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a:Landroid/location/Location;

    .line 80
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->f:Ljava/lang/String;

    .line 81
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->g:I

    .line 82
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 83
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i:J

    .line 84
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->j:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 85
    return-void
.end method

.method private static a(DDD)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x0

    const-string v1, "distance(latitude, longitude, \"%f\", \"%f\", \"%f\")"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(DDDLjava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-static/range {p0 .. p5}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a(DDD)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, "> 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    const-string v0, " AND CONTAINS ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v2, p6}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " AND search_type = \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-wide/16 v0, -0x1

    cmp-long v0, p9, v0

    if-nez v0, :cond_1

    .line 241
    const-wide/16 v0, -0x1

    .line 247
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AND content_age = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-nez v0, :cond_2

    .line 243
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p9

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;DDDLjava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)Ljava/util/LinkedHashMap;
    .locals 10
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
            "DDD",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/katana/features/places/PlacesNearby$SearchType;",
            "J)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    invoke-static/range {p3 .. p13}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a(DDDLjava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-string v6, "places"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPlaces;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetPlaces;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "android_event_tagging"

    invoke-static {p0, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 102
    invoke-static/range {p9 .. p9}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    const-string v9, "events"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v5, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    const/4 v7, 0x5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JI)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    const-string v6, "deals"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDeals;

    const/4 v4, 0x0

    const-string v5, "creator_id IN (SELECT page_id FROM #places)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDeals;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v6, "deal_status"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    const/4 v4, 0x0

    const-string v5, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDealStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v6, "deal_history"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    const/4 v4, 0x0

    const-string v5, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDealHistory;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v6, "nearby_regions"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetNearbyRegions;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v2, "latitude=\'%f\' and longitude=\'%f\' and type in (\'%s\',\'%s\')"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x2

    sget-object v7, Lcom/facebook/katana/model/GeoRegion$Type;->city:Lcom/facebook/katana/model/GeoRegion$Type;

    aput-object v7, v3, v5

    const/4 v5, 0x3

    sget-object v7, Lcom/facebook/katana/model/GeoRegion$Type;->state:Lcom/facebook/katana/model/GeoRegion$Type;

    aput-object v7, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetNearbyRegions;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v8
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 10
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    .line 147
    const-string v0, "places"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPlaces;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPlaces;->h()Ljava/util/Map;

    move-result-object v1

    .line 150
    const-string v0, "events"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;->h()Ljava/util/Map;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEvent;

    .line 155
    iget-object v3, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    new-instance v4, Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {v4, v0}, Lcom/facebook/katana/model/FacebookPlace;-><init>(Lcom/facebook/katana/model/FacebookEvent;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    const-string v0, "deals"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDeals;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDeals;->h()Ljava/util/Map;

    move-result-object v4

    .line 161
    const-string v0, "deal_status"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealStatus;->h()Ljava/util/Map;

    move-result-object v5

    .line 163
    const-string v0, "deal_history"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealHistory;->h()Ljava/util/Map;

    move-result-object v6

    .line 165
    const-string v0, "nearby_regions"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetNearbyRegions;

    iget-object v0, v0, Lcom/facebook/katana/service/method/FqlGetNearbyRegions;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->s:Ljava/util/List;

    .line 168
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookDeal;

    .line 170
    if-eqz v1, :cond_1

    .line 171
    iget-wide v2, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookDealStatus;

    .line 172
    iget-wide v8, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookDealHistory;

    .line 175
    iput-object v3, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealHistory:Lcom/facebook/katana/model/FacebookDealHistory;

    .line 176
    iput-object v2, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealStatus:Lcom/facebook/katana/model/FacebookDealStatus;

    .line 178
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v2, v1}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookDeal;)V

    .line 180
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
