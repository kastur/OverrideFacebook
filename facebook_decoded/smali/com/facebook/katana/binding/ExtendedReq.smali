.class Lcom/facebook/katana/binding/ExtendedReq;
.super Ljava/lang/Object;
.source "ExtendedReq.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/method/ServiceOperation;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v3, "extended_type"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 44
    const-string v4, "rid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 48
    sparse-switch v3, :sswitch_data_0

    .line 196
    :cond_0
    return-void

    .line 50
    :sswitch_0
    check-cast p6, Lcom/facebook/katana/service/method/FqlGetEvents;

    .line 51
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 54
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/method/FqlGetEvents;->h()Ljava/util/List;

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 58
    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSessionListener;->c()V

    goto :goto_0

    .line 65
    :sswitch_1
    check-cast p6, Lcom/facebook/katana/service/method/FqlGetFriendCheckins;

    .line 66
    const/4 v3, 0x0

    .line 68
    const/16 v4, 0xc8

    move/from16 v0, p3

    if-ne v0, v4, :cond_9

    .line 69
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/method/FqlGetFriendCheckins;->h()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    .line 72
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 73
    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_2

    .line 80
    :sswitch_2
    check-cast p6, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v4, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    const/16 v6, 0xc8

    move/from16 v0, p3

    if-ne v0, v6, :cond_8

    .line 86
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h()Ljava/util/List;

    move-result-object v5

    .line 87
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i()Ljava/util/List;

    move-result-object v4

    .line 88
    const/4 v3, 0x1

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    .line 90
    :goto_3
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->j:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    if-eqz v3, :cond_2

    .line 91
    new-instance v3, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a:Landroid/location/Location;

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->f:Ljava/lang/String;

    move-object/from16 v0, p6

    iget v6, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->g:I

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i:J

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;-><init>(Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)V

    .line 97
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->j:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move v6, v10

    move-object v7, v3

    move-object/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 101
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->a:Landroid/location/Location;

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->f:Ljava/lang/String;

    move-object/from16 v0, p6

    iget v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->g:I

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i:J

    move-object/from16 v4, v19

    move/from16 v5, p3

    move-object v6, v12

    move-object v7, v11

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_4

    .line 109
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Lcom/facebook/katana/binding/AppSessionListener;->a(Lcom/facebook/katana/binding/AppSession;Ljava/lang/Object;)V

    goto :goto_5

    .line 117
    :sswitch_4
    check-cast p6, Lcom/facebook/katana/service/method/PlacesCheckin;

    .line 120
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCheckin;->a:Lcom/facebook/katana/model/FacebookPlace;

    move-object/from16 v20, v0

    .line 121
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 123
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/method/PlacesCheckin;->h()J

    move-result-wide v4

    .line 126
    const/4 v8, 0x0

    .line 128
    const/16 v3, 0xc8

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v21

    .line 133
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/facebook/katana/service/method/PlacesCheckin;->g:Ljava/util/Set;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    new-instance v3, Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v13, 0x3e8

    div-long/2addr v10, v13

    const-string v13, "checkin"

    const-wide v14, 0x51a67c8e50L

    invoke-direct/range {v3 .. v15}, Lcom/facebook/katana/model/FacebookCheckinDetails;-><init>(JJJJLjava/util/List;Ljava/lang/String;J)V

    .line 145
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/facebook/katana/model/FacebookCheckinDetails;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    .line 146
    new-instance v15, Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-direct {v15, v6, v3}, Lcom/facebook/katana/model/FacebookPost$Attachment;-><init>(Ljava/lang/String;Lcom/facebook/katana/model/FacebookCheckinDetails;)V

    .line 148
    new-instance v6, Lcom/facebook/katana/model/FacebookPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x51a67c8e50L

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    const-wide/16 v12, -0x1

    move-object/from16 v0, p6

    iget-object v14, v0, Lcom/facebook/katana/service/method/PlacesCheckin;->f:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCheckin;->g:Ljava/util/Set;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v18}, Lcom/facebook/katana/model/FacebookPost;-><init>(Ljava/lang/String;JJJLjava/lang/String;Lcom/facebook/katana/model/FacebookPost$Attachment;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/katana/model/FacebookPost;->a(Ljava/lang/Long;)V

    .line 163
    new-instance v7, Lcom/facebook/katana/model/FacebookProfile;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    invoke-virtual {v6, v7}, Lcom/facebook/katana/model/FacebookPost;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v7, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/binding/AppSession;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v7, v6}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 172
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/binding/AppSession;->b:Ljava/util/Map;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v7, :cond_4

    .line 174
    invoke-virtual {v7, v6}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 178
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/katana/binding/AppSession;->c:Ljava/util/Map;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v7, :cond_5

    .line 180
    invoke-virtual {v7, v6}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 183
    :cond_5
    new-instance v7, Lcom/facebook/katana/model/FacebookCheckin;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/facebook/katana/model/FacebookCheckin;-><init>(JJ)V

    .line 185
    invoke-virtual {v7, v3}, Lcom/facebook/katana/model/FacebookCheckin;->a(Lcom/facebook/katana/model/FacebookCheckinDetails;)V

    .line 186
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/facebook/katana/model/FacebookCheckin;->a(Lcom/facebook/katana/model/FacebookUser;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v7, v3, v4}, Lcom/facebook/katana/features/places/PlacesUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookCheckin;J)V

    move-object v8, v6

    .line 192
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v3}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v4, v19

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 193
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSessionListener;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookPost;)V

    goto :goto_7

    .line 121
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_8
    move v10, v3

    move-object v11, v4

    move-object v12, v5

    goto/16 :goto_3

    :cond_9
    move-object v4, v3

    goto/16 :goto_1

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_2
        0x1f7 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method
