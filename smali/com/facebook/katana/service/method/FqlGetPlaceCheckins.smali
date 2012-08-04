.class public Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;
.super Lcom/facebook/katana/service/method/FqlGetStream;
.source "FqlGetPlaceCheckins.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private f:I

.field private g:I

.field private h:Lcom/facebook/katana/model/FacebookPlace;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJLcom/facebook/katana/model/FacebookPlace;II)V
    .locals 13
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
    .line 154
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p9

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    move-object v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JJJI)Ljava/util/LinkedHashMap;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/facebook/katana/service/method/FqlGetStream;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/LinkedHashMap;)V

    .line 158
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    .line 161
    move/from16 v0, p10

    iput v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->g:I

    .line 162
    move/from16 v0, p11

    iput v0, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->f:I

    .line 163
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "post_id IN (SELECT post_id FROM checkin WHERE page_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ") ORDER BY created_time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JJLcom/facebook/katana/model/FacebookPlace;II)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v13

    .line 77
    new-instance v1, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;

    const/4 v3, 0x0

    invoke-virtual {v13}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/16 v11, 0x14

    move-object v2, p0

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJLcom/facebook/katana/model/FacebookPlace;II)V

    .line 86
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v2, "subject"

    move-object/from16 v0, p5

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v7, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    const/16 v5, 0x3e9

    const/16 v6, 0x3fc

    move-object v2, v13

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JJJI)Ljava/util/LinkedHashMap;
    .locals 13
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
            "JJJI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 174
    const-string v12, "posts"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;

    const/4 v4, 0x0

    invoke-static/range {p7 .. p8}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->a(J)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJLjava/lang/String;I)V

    invoke-virtual {v11, v12, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v6, "profiles"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v11, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v11
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v7, 0x0

    .line 106
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h()Ljava/util/List;

    move-result-object v1

    .line 108
    iget-object v0, p1, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 109
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    .line 111
    iget-object v2, p1, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    iget v2, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->g:I

    iget v2, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/util/List;I)V

    move-object v7, v0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 119
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v4, v1, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    iget v6, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->f:I

    move v1, p5

    move-object v2, p6

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;JILcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 6
    .parameter

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlGetStream;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    .line 202
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 205
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPageId:J

    iget-object v4, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v4, v4, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/katana/util/Assert;->a(JJ)V

    .line 206
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->h:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/model/FacebookCheckinDetails;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method
