.class public Lcom/facebook/katana/service/method/FqlGetPlaceById;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlGetPlaceById.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookPlace;

.field private f:J

.field private g:Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/binding/AppSessionListener$GetObjectListener;)V
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
            "J",
            "Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {p1, v2, p3, p4, p5}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 70
    iput-wide p4, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->f:J

    .line 71
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->g:Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/facebook/katana/binding/AppSessionListener$GetObjectListener;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x3e9

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v7

    .line 45
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPlaceById;

    invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetPlaceById;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/binding/AppSessionListener$GetObjectListener;)V

    move-object v3, v7

    move-object v4, p0

    move-object v5, v0

    move v6, v8

    move v7, v8

    move-object v8, v2

    .line 47
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    const/4 v4, 0x0

    .line 77
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    const-string v0, "page_id IN ( %d )"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 80
    const-string v6, "places"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPlaces;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetPlaces;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v8, "pages"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPages;

    const-class v6, Lcom/facebook/katana/model/FacebookPage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetPages;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v6, "deals"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDeals;

    const-string v5, "creator_id IN (SELECT page_id FROM #places)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDeals;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v6, "deal_status"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    const-string v5, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDealStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "deal_history"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    const-string v5, "promotion_id IN (SELECT promotion_id FROM #deals)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetDealHistory;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object v7
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->g:Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-interface {v0, v1}, Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;->a(Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p7}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->g:Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;

    invoke-interface {v0, p7}, Lcom/facebook/katana/binding/AppSessionListener$GetObjectListener;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 8
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 115
    const-string v0, "places"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPlaces;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPlaces;->h()Ljava/util/Map;

    move-result-object v1

    .line 116
    const-string v0, "pages"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPages;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPages;->h()Ljava/util/Map;

    move-result-object v2

    .line 117
    const-string v0, "deals"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDeals;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDeals;->h()Ljava/util/Map;

    move-result-object v3

    .line 119
    const-string v0, "deal_status"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealStatus;->h()Ljava/util/Map;

    move-result-object v4

    .line 121
    const-string v0, "deal_history"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetDealHistory;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetDealHistory;->h()Ljava/util/Map;

    move-result-object v5

    .line 124
    iget-wide v6, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a:Lcom/facebook/katana/model/FacebookPlace;

    .line 125
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v6, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPage;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookPage;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 128
    iget-wide v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookDeal;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookDealStatus;

    .line 131
    iget-wide v2, v0, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookDealHistory;

    .line 133
    iput-object v2, v0, Lcom/facebook/katana/model/FacebookDeal;->mDealHistory:Lcom/facebook/katana/model/FacebookDealHistory;

    .line 134
    iput-object v1, v0, Lcom/facebook/katana/model/FacebookDeal;->mDealStatus:Lcom/facebook/katana/model/FacebookDealStatus;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookPlace;->a(Lcom/facebook/katana/model/FacebookDeal;)V

    .line 137
    return-void
.end method
