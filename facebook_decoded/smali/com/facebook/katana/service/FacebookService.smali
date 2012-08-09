.class public Lcom/facebook/katana/service/FacebookService;
.super Landroid/app/Service;
.source "FacebookService.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/FacebookService;->a:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/facebook/katana/service/method/ServiceOperation;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ServiceOperation;->l()Landroid/content/Intent;

    move-result-object v0

    .line 1236
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperation;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    invoke-virtual {p2}, Lcom/facebook/katana/service/method/ServiceOperation;->a()V

    .line 1335
    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/ServiceOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1312
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ServiceOperation;

    .line 1315
    invoke-static {v0}, Lcom/facebook/katana/service/FacebookService;->a(Lcom/facebook/katana/service/method/ServiceOperation;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    iget-object v3, p0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1317
    invoke-direct {p0, v2, v0}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperation;)V

    .line 1318
    const/4 v0, 0x1

    .line 1322
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/katana/service/method/ServiceOperation;)V
    .locals 6
    .parameter

    .prologue
    .line 1248
    instance-of v0, p1, Lcom/facebook/katana/service/method/ProfileImageDownload;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    :goto_0
    return-void

    .line 1254
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1255
    iget-wide v2, p0, Lcom/facebook/katana/service/FacebookService;->g:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1257
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1258
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1261
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    iput-wide v0, p0, Lcom/facebook/katana/service/FacebookService;->g:J

    goto :goto_0
.end method

.method private c(Lcom/facebook/katana/service/method/ServiceOperation;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1275
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 1277
    :goto_0
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 1278
    :goto_1
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1281
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 1283
    :goto_2
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1285
    :goto_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    invoke-static {}, Lcom/facebook/katana/service/BackgroundDetectionService;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/util/List;)Z

    .line 1303
    :cond_1
    :goto_4
    return-void

    :cond_2
    move v2, v1

    .line 1275
    goto :goto_0

    :cond_3
    move v2, v1

    .line 1277
    goto :goto_1

    :cond_4
    move v2, v1

    .line 1281
    goto :goto_2

    :cond_5
    move v0, v1

    .line 1283
    goto :goto_3

    .line 1291
    :cond_6
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/FacebookService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1293
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1294
    const-string v3, "type"

    const/16 v4, 0x4e

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1296
    invoke-static {p0, v1, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1298
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/ServiceOperation;->l()Landroid/content/Intent;

    move-result-object v2

    .line 822
    const-string v1, "rid"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 826
    sparse-switch v1, :sswitch_data_0

    .line 1200
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1205
    :goto_1
    return-void

    .line 828
    :sswitch_0
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 829
    const-string v1, "rid"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 830
    check-cast p1, Lcom/facebook/katana/service/method/AuthLogin;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/AuthLogin;->h()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v7

    .line 832
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 834
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 835
    const-string v1, "type"

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v1, "FacebookService.originalIntent"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    const-string v1, "ApiMethod.secret"

    iget-object v2, v7, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 848
    iget-wide v1, v7, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    iget-object v4, v7, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v1, Lcom/facebook/katana/service/method/StreamGetFilters;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    iget-object v4, v7, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/katana/service/method/StreamGetFilters;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v1, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    iget-object v4, v7, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v5, v9

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto :goto_1

    .line 857
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 864
    :sswitch_1
    const/4 v6, 0x0

    .line 865
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    move-object/from16 v1, p1

    .line 867
    check-cast v1, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;->h()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    .line 869
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->i()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/model/FacebookSessionInfo;

    .line 870
    if-nez v3, :cond_1

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    .line 874
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v1

    iget-wide v4, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookUser;

    invoke-virtual {v3, v1}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Lcom/facebook/katana/model/FacebookUser;)V

    .line 877
    check-cast p1, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;->h()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/StreamGetFilters;

    .line 880
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/StreamGetFilters;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/katana/model/FacebookSessionInfo;->b(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object v6, v3

    .line 887
    :cond_2
    const-string v1, "FacebookService.originalIntent"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    .line 891
    if-eqz v3, :cond_3

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v2, v3

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 895
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 902
    :sswitch_2
    const/4 v6, 0x0

    .line 903
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 904
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetStream;

    .line 905
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlGetStream;->h()Ljava/util/List;

    move-result-object v6

    .line 907
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 913
    :sswitch_3
    const/4 v6, 0x0

    .line 914
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 915
    check-cast p1, Lcom/facebook/katana/service/method/StreamGetComments;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/StreamGetComments;->h()Ljava/util/List;

    move-result-object v6

    .line 917
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 923
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/service/method/StreamAddComment;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/StreamAddComment;->h()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 929
    :sswitch_5
    check-cast p1, Lcom/facebook/katana/service/method/PhotosCreateAlbum;

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->h()Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosCreateAlbum;->i()Landroid/net/Uri;

    move-result-object v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 937
    :sswitch_6
    const-string v1, "session_user_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 938
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 939
    check-cast p1, Lcom/facebook/katana/service/method/PhotosUpload;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosUpload;->h()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v6

    .line 951
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 941
    :cond_6
    const-string v1, "checkin_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 943
    const/4 v3, 0x0

    .line 944
    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_13

    .line 945
    const-string v1, "aid"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    new-instance v3, Lcom/facebook/katana/model/FacebookPhoto;

    const/4 v4, 0x0

    const-string v1, "subject"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/facebook/katana/model/FacebookPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BJJLjava/lang/String;)V

    move-object v6, v3

    goto :goto_2

    .line 957
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/service/method/PhotosDeletePhoto;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosDeletePhoto;->h()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 963
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/service/method/PhotosAddTag;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosAddTag;->h()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 969
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/service/method/PhotosGetTags;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosGetTags;->h()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 975
    :sswitch_a
    check-cast p1, Lcom/facebook/katana/service/method/SyncPhotoComments;

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/SyncPhotoComments;->i()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/SyncPhotoComments;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 982
    :sswitch_b
    check-cast p1, Lcom/facebook/katana/service/method/PhotosAddComment;

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/PhotosAddComment;->h()Lcom/facebook/katana/model/FacebookPhotoComment;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 989
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v3, p1

    check-cast v3, Lcom/facebook/katana/service/method/PhotoDownload;

    invoke-virtual {v3}, Lcom/facebook/katana/service/method/PhotoDownload;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 992
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/FacebookService;->c(Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_1

    .line 998
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v3, p1

    check-cast v3, Lcom/facebook/katana/service/method/PhotoDownload;

    invoke-virtual {v3}, Lcom/facebook/katana/service/method/PhotoDownload;->h()Lcom/facebook/katana/binding/StreamPhoto;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1000
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/FacebookService;->c(Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_1

    .line 1006
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v3, p1

    check-cast v3, Lcom/facebook/katana/service/method/PhotoDownload;

    invoke-virtual {v3}, Lcom/facebook/katana/service/method/PhotoDownload;->j()[B

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1008
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/FacebookService;->c(Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_1

    .line 1013
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1015
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/FacebookService;->c(Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_1

    .line 1020
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v3, p1

    check-cast v3, Lcom/facebook/katana/service/method/ProfileImageDownload;

    invoke-virtual {v3}, Lcom/facebook/katana/service/method/ProfileImageDownload;->h()Lcom/facebook/katana/binding/ProfileImage;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1022
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/FacebookService;->c(Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto/16 :goto_1

    .line 1027
    :sswitch_11
    check-cast p1, Lcom/facebook/katana/service/method/FqlMultiQuery;

    .line 1030
    const/4 v3, 0x0

    .line 1032
    const/4 v4, 0x1

    .line 1034
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_12

    .line 1035
    const-string v1, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    .line 1036
    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 1037
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookUser;

    .line 1038
    check-cast v1, Lcom/facebook/katana/model/FacebookUserFull;

    move-object v3, v1

    .line 1039
    :cond_7
    const-string v1, "significant_other"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    .line 1043
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1046
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookUser;

    .line 1047
    invoke-virtual {v3, v1}, Lcom/facebook/katana/model/FacebookUserFull;->a(Lcom/facebook/katana/model/FacebookUser;)V

    goto :goto_3

    .line 1051
    :cond_8
    const-string v1, "arefriends"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetUsersFriendStatus;

    .line 1052
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersFriendStatus;->h()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1054
    const/4 v1, 0x0

    move-object v6, v3

    move v3, v1

    .line 1057
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1063
    :sswitch_12
    check-cast p1, Lcom/facebook/katana/service/method/FqlMultiQuery;

    .line 1065
    const/4 v6, 0x0

    .line 1067
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 1068
    const-string v1, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    .line 1069
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 1070
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookUser;

    move-object v6, v1

    .line 1072
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1081
    :sswitch_13
    const/4 v6, 0x0

    .line 1082
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_a

    .line 1083
    check-cast p1, Lcom/facebook/katana/service/method/ConnectionsSync;

    .line 1084
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/ConnectionsSync;->h()Ljava/util/Map;

    move-result-object v6

    .line 1086
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1092
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1098
    :sswitch_15
    check-cast p1, Lcom/facebook/katana/service/method/UsersSearch;

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/UsersSearch;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/UsersSearch;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1105
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    check-cast p1, Lcom/facebook/katana/service/method/FqlStatusQuery;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlStatusQuery;->h()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1111
    :sswitch_17
    const/4 v6, 0x0

    .line 1112
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_b

    .line 1113
    check-cast p1, Lcom/facebook/katana/service/method/NotificationsGet;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/NotificationsGet;->h()Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v6

    .line 1115
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1121
    :sswitch_18
    check-cast p1, Lcom/facebook/katana/service/method/EventRsvp;

    .line 1122
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/EventRsvp;->h()J

    move-result-wide v4

    .line 1123
    const/4 v1, 0x0

    .line 1125
    const/16 v3, 0xc8

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 1126
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/EventRsvp;->i()Z

    move-result v1

    move v3, v1

    .line 1128
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1134
    :sswitch_19
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetEventMembers;

    .line 1135
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlGetEventMembers;->h()J

    move-result-wide v3

    .line 1136
    const/4 v7, 0x0

    .line 1138
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_c

    .line 1139
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlGetEventMembers;->i()Ljava/util/Map;

    move-result-object v7

    .line 1141
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1147
    :sswitch_1a
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    .line 1148
    const/4 v6, 0x0

    .line 1150
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_d

    .line 1151
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;->h()Ljava/util/Map;

    move-result-object v6

    .line 1153
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1159
    :sswitch_1b
    check-cast p1, Lcom/facebook/katana/service/method/FriendRequestRespond;

    .line 1160
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FriendRequestRespond;->h()J

    move-result-wide v4

    .line 1161
    const/4 v1, 0x0

    .line 1163
    const/16 v3, 0xc8

    move/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 1164
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FriendRequestRespond;->i()Z

    move-result v1

    move v3, v1

    .line 1166
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v3}, Ljava/lang/Boolean;-><init>(Z)V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1173
    :sswitch_1c
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetMutualFriends;

    .line 1174
    const/4 v6, 0x0

    .line 1176
    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ne v0, v1, :cond_e

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/method/FqlGetMutualFriends;->h()Ljava/util/Map;

    move-result-object v6

    .line 1179
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1186
    :sswitch_1d
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->e()V

    goto/16 :goto_0

    .line 1194
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    move v3, v1

    goto :goto_6

    :cond_10
    move v3, v1

    goto/16 :goto_5

    :cond_11
    move-object v6, v3

    move v3, v4

    goto/16 :goto_4

    :cond_12
    move-object v6, v3

    move v3, v4

    goto/16 :goto_4

    :cond_13
    move-object v6, v3

    goto/16 :goto_2

    .line 826
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x1e -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_4
        0x32 -> :sswitch_17
        0x3d -> :sswitch_5
        0x41 -> :sswitch_6
        0x43 -> :sswitch_7
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x46 -> :sswitch_a
        0x47 -> :sswitch_b
        0x48 -> :sswitch_d
        0x49 -> :sswitch_d
        0x4a -> :sswitch_e
        0x4b -> :sswitch_f
        0x4c -> :sswitch_e
        0x4d -> :sswitch_c
        0x50 -> :sswitch_13
        0x51 -> :sswitch_16
        0x52 -> :sswitch_11
        0x53 -> :sswitch_12
        0x64 -> :sswitch_10
        0x79 -> :sswitch_18
        0x7a -> :sswitch_19
        0x83 -> :sswitch_1a
        0x84 -> :sswitch_1b
        0x85 -> :sswitch_1c
        0x8c -> :sswitch_1d
        0xd3 -> :sswitch_15
        0x3e8 -> :sswitch_1e
        0x3e9 -> :sswitch_1e
        0x44c -> :sswitch_14
    .end sparse-switch
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1210
    invoke-virtual {p1}, Lcom/facebook/katana/service/method/ServiceOperation;->l()Landroid/content/Intent;

    move-result-object v0

    .line 1211
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1212
    packed-switch v1, :pswitch_data_0

    .line 1218
    :goto_0
    return-void

    .line 1214
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p2

    div-long/2addr v2, p4

    long-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 136
    invoke-virtual {p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 144
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v3, "type"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2bd

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 158
    :cond_2
    const/4 v10, 0x0

    .line 159
    sparse-switch v22, :sswitch_data_0

    move-object v3, v10

    .line 787
    :cond_3
    :goto_1
    if-eqz v3, :cond_b

    .line 788
    const-string v4, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperation;)V

    goto :goto_0

    .line 161
    :sswitch_0
    new-instance v3, Lcom/facebook/katana/service/method/AuthLogin;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "un"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "pwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "cred_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/AuthLogin;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto :goto_1

    .line 171
    :sswitch_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 174
    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const-class v9, Lcom/facebook/katana/model/FacebookUser;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Class;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lcom/facebook/katana/service/method/StreamGetFilters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v0, v6, v5}, Lcom/facebook/katana/service/method/StreamGetFilters;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object v7, v10

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 192
    :sswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    monitor-enter v4

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 199
    new-instance v4, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v5, Lcom/facebook/katana/service/FacebookService$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/facebook/katana/service/FacebookService$1;-><init>(Lcom/facebook/katana/service/FacebookService;Ljava/util/List;)V

    invoke-direct {v4, v5}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 215
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    new-instance v3, Lcom/facebook/katana/service/method/AuthLogout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/facebook/katana/service/method/AuthLogout;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 197
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 222
    :sswitch_3
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    const-string v3, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 227
    const-string v3, "stream_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    sget-object v17, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 231
    if-eqz v3, :cond_4

    .line 232
    invoke-static {v3}, Lcom/facebook/katana/model/FacebookStreamType;->valueOf(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookStreamType;

    move-result-object v17

    .line 235
    :cond_4
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "start"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "end"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "uid"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    if-nez v12, :cond_5

    const-string v5, "session_filter_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_2
    const-string v5, "limit"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v17}, Lcom/facebook/katana/service/method/FqlGetStream;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ[JJLjava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)V

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 254
    :sswitch_4
    new-instance v3, Lcom/facebook/katana/service/method/StreamRemove;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/StreamRemove;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 262
    :sswitch_5
    new-instance v3, Lcom/facebook/katana/service/method/StreamGetComments;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/StreamGetComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 271
    :sswitch_6
    new-instance v3, Lcom/facebook/katana/service/method/StreamAddComment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/service/method/StreamAddComment;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 281
    :sswitch_7
    new-instance v3, Lcom/facebook/katana/service/method/StreamRemoveComment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/StreamRemoveComment;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 289
    :sswitch_8
    new-instance v3, Lcom/facebook/katana/service/method/StreamAddLike;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/StreamAddLike;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 298
    :sswitch_9
    new-instance v3, Lcom/facebook/katana/service/method/StreamRemoveLike;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/StreamRemoveLike;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 306
    :sswitch_a
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 307
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 309
    const-string v3, "session_user_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 310
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 311
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v13, v14}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x0

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v10, "user"

    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const-class v9, Lcom/facebook/katana/model/FacebookUserFull;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Class;)V

    invoke-virtual {v12, v10, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v10, "significant_other"

    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "uid IN (SELECT significant_other_id FROM #user)"

    const-class v9, Lcom/facebook/katana/model/FacebookUser;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v12, v10, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    cmp-long v3, v13, v15

    if-eqz v3, :cond_6

    .line 321
    const-string v17, "arefriends"

    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersFriendStatus;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-wide v7, v15

    move-wide v9, v13

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/service/method/FqlGetUsersFriendStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JJLcom/facebook/katana/service/method/ServiceOperationListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_6
    new-instance v3, Lcom/facebook/katana/service/method/FqlMultiQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object v7, v12

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 331
    :sswitch_b
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 332
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 334
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 335
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x0

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v11, "user"

    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const-class v9, Lcom/facebook/katana/model/FacebookUser;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;Ljava/lang/Class;)V

    invoke-virtual {v10, v11, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v3, Lcom/facebook/katana/service/method/FqlMultiQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object v7, v10

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 344
    :sswitch_c
    new-instance v3, Lcom/facebook/katana/service/method/ConnectionsSync;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "un"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/ConnectionsSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 353
    :sswitch_d
    new-instance v3, Lcom/facebook/katana/service/method/ContinuousImport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/facebook/katana/service/method/ContinuousImport;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 361
    :sswitch_e
    new-instance v3, Lcom/facebook/katana/service/method/FqlStatusQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "SELECT uid,first_name,last_name,name,status,pic_square FROM user WHERE ((uid IN (SELECT target_id FROM connection WHERE source_id=%1$d AND target_type=\'user\' AND is_following=1)) AND (status.message != \'\')) ORDER BY status.time DESC LIMIT 25"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "session_user_id"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "un"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlStatusQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 373
    :sswitch_f
    new-instance v3, Lcom/facebook/katana/service/method/NotificationsGet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/facebook/katana/service/method/NotificationsGet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 381
    :sswitch_10
    new-instance v3, Lcom/facebook/katana/service/method/FqlSyncNotifications;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "session_user_id"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlSyncNotifications;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 390
    :sswitch_11
    new-instance v3, Lcom/facebook/katana/service/method/NotificationsMarkRead;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/NotificationsMarkRead;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 399
    :sswitch_12
    new-instance v3, Lcom/facebook/katana/service/method/SyncAlbums;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/SyncAlbums;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 409
    :sswitch_13
    new-instance v3, Lcom/facebook/katana/service/method/PhotosCreateAlbum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "visibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/service/method/PhotosCreateAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 421
    :sswitch_14
    new-instance v3, Lcom/facebook/katana/service/method/PhotosEditAlbum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "visibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p1

    move-object/from16 v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/facebook/katana/service/method/PhotosEditAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 434
    :sswitch_15
    new-instance v3, Lcom/facebook/katana/service/method/PhotosDeleteAlbum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/PhotosDeleteAlbum;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 444
    :sswitch_16
    new-instance v3, Lcom/facebook/katana/service/method/PhotosGetPhotos;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v5, "uid"

    const-wide/16 v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v5, "start"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v5, "limit"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v5, p1

    move-object/from16 v13, p0

    invoke-direct/range {v3 .. v13}, Lcom/facebook/katana/service/method/PhotosGetPhotos;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JIILcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 457
    :sswitch_17
    new-instance v3, Lcom/facebook/katana/service/method/PhotosUpload;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "caption"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "checkin_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "profile_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v5, "extra_photo_publish"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string v5, "extra_place"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "extra_status_target_id"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v5, "extra_status_privacy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v21}, Lcom/facebook/katana/service/method/PhotosUpload;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;JJZJLjava/lang/String;JLjava/lang/String;)V

    .line 473
    const-string v4, "vault_image_fbid"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 474
    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_3

    move-object v4, v3

    .line 475
    check-cast v4, Lcom/facebook/katana/service/method/PhotosUpload;

    invoke-virtual {v4, v5, v6}, Lcom/facebook/katana/service/method/PhotosUpload;->a(J)Lcom/facebook/katana/service/method/PhotosUpload;

    goto/16 :goto_1

    .line 482
    :sswitch_18
    new-instance v3, Lcom/facebook/katana/service/method/PhotosEditPhoto;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "caption"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/PhotosEditPhoto;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 492
    :sswitch_19
    new-instance v3, Lcom/facebook/katana/service/method/PhotosDeletePhoto;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/PhotosDeletePhoto;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 502
    :sswitch_1a
    new-instance v3, Lcom/facebook/katana/service/method/PhotosAddTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/PhotosAddTag;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 511
    :sswitch_1b
    new-instance v3, Lcom/facebook/katana/service/method/PhotosGetTags;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/PhotosGetTags;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 519
    :sswitch_1c
    new-instance v3, Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/FacebookService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/SyncPhotoComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 528
    :sswitch_1d
    new-instance v3, Lcom/facebook/katana/service/method/PhotosAddComment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "uid"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/service/method/PhotosAddComment;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 543
    :sswitch_1e
    new-instance v3, Lcom/facebook/katana/service/method/PhotoDownload;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "uid"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "fbid"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v5, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "type"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v5, p1

    move-object/from16 v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/facebook/katana/service/method/PhotoDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 552
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/katana/service/FacebookService;->b(Lcom/facebook/katana/service/method/ServiceOperation;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    goto/16 :goto_0

    .line 562
    :sswitch_1f
    new-instance v3, Lcom/facebook/katana/service/method/ProfileImageDownload;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "uid"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/katana/util/FileUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/ProfileImageDownload;-><init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 568
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/katana/service/FacebookService;->b(Lcom/facebook/katana/service/method/ServiceOperation;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    goto/16 :goto_0

    .line 579
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->f:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/katana/service/FacebookService;->a(Ljava/util/List;)Z

    move-object v3, v10

    .line 580
    goto/16 :goto_1

    .line 584
    :sswitch_21
    new-instance v3, Lcom/facebook/katana/service/method/MailboxSync;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "folder"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v5, "start"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v5, "limit"

    const/16 v9, 0x14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "sync"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v5, "uid"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v5, p1

    move-object/from16 v13, p0

    invoke-direct/range {v3 .. v13}, Lcom/facebook/katana/service/method/MailboxSync;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIIZJLcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 597
    :sswitch_22
    new-instance v3, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "folder"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v5, "tid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object/from16 v5, p1

    move-object/from16 v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IJIILcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 606
    :sswitch_23
    new-instance v3, Lcom/facebook/katana/model/FacebookUser;

    const-string v4, "profile_uid"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "profile_first_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "profile_last_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "profile_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "profile_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/model/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v4, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 616
    new-instance v4, Lcom/facebook/katana/service/method/MailboxSend;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p1

    move-object v8, v3

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/katana/service/method/MailboxSend;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/model/FacebookUser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    move-object v3, v4

    .line 623
    goto/16 :goto_1

    .line 627
    :sswitch_24
    new-instance v3, Lcom/facebook/katana/model/FacebookUser;

    const-string v4, "profile_uid"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "profile_first_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "profile_last_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "profile_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "profile_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/model/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v4, Lcom/facebook/katana/service/method/MailboxReply;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v6, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "tid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v6, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p1

    move-object v8, v3

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/katana/service/method/MailboxReply;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/model/FacebookUser;JLjava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    move-object v3, v4

    .line 640
    goto/16 :goto_1

    .line 644
    :sswitch_25
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    const-string v3, "tid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 646
    const-string v3, "read"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 647
    array-length v3, v12

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 648
    new-instance v3, Lcom/facebook/katana/service/method/MailboxMarkThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v5, 0x0

    aget-wide v7, v12, v5

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/MailboxMarkThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 652
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 653
    const/4 v3, 0x0

    move v11, v3

    :goto_3
    array-length v3, v12

    if-ge v11, v3, :cond_8

    .line 654
    new-instance v3, Lcom/facebook/katana/service/method/MailboxMarkThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    aget-wide v7, v12, v11

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/MailboxMarkThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_3

    .line 658
    :cond_8
    new-instance v3, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object v7, v13

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 665
    :sswitch_26
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 666
    const-string v3, "tid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 667
    const-string v3, "folder"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 669
    array-length v3, v12

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 670
    new-instance v3, Lcom/facebook/katana/service/method/MailboxDeleteThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/4 v5, 0x0

    aget-wide v7, v12, v5

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/MailboxDeleteThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JILcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 673
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 674
    const/4 v3, 0x0

    move v11, v3

    :goto_4
    array-length v3, v12

    if-ge v11, v3, :cond_a

    .line 675
    new-instance v3, Lcom/facebook/katana/service/method/MailboxDeleteThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    aget-wide v7, v12, v11

    move-object/from16 v5, p1

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/MailboxDeleteThread;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JILcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_4

    .line 678
    :cond_a
    new-instance v3, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object v7, v13

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 684
    :sswitch_27
    new-instance v3, Lcom/facebook/katana/service/method/UsersSearch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const-string v5, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v5, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "start"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "limit"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v5, p1

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/service/method/UsersSearch;-><init>(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 704
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    const/16 v5, 0xc8

    const-string v6, "Ok"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v10

    .line 706
    goto/16 :goto_1

    .line 710
    :sswitch_29
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 711
    const-string v3, "eid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 712
    const-string v3, "rsvp_status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/katana/model/FacebookEventFull;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    move-result-object v10

    .line 714
    new-instance v3, Lcom/facebook/katana/service/method/EventRsvp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/EventRsvp;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)V

    goto/16 :goto_1

    .line 719
    :sswitch_2a
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 720
    const-string v3, "eid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 721
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetEventMembers;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetEventMembers;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    goto/16 :goto_1

    .line 726
    :sswitch_2b
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 727
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "uid IN (SELECT uid_from FROM friend_request WHERE uid_to="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetUsersProfile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/facebook/katana/model/FacebookUser;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 739
    :sswitch_2c
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 740
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 741
    const-string v3, "confirm"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 743
    new-instance v3, Lcom/facebook/katana/service/method/FriendRequestRespond;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/FriendRequestRespond;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JZ)V

    goto/16 :goto_1

    .line 749
    :sswitch_2d
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "uid2 IN (SELECT uid_from FROM friend_request WHERE uid_to="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetMutualFriends;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/katana/service/method/FqlGetMutualFriends;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 762
    :sswitch_2e
    const-string v3, "session_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 763
    const-string v3, "uid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 765
    new-instance v3, Lcom/facebook/katana/service/method/FqlGetFacebookAffiliation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->c:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/service/method/FqlGetFacebookAffiliation;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    goto/16 :goto_1

    .line 771
    :sswitch_2f
    const-string v3, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    sget-object v4, Lcom/facebook/katana/service/FacebookService;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/method/ServiceOperation;

    .line 775
    if-eqz v3, :cond_3

    .line 776
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/katana/service/method/ServiceOperation;->a(Landroid/content/Intent;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    goto/16 :goto_1

    .line 789
    :cond_b
    const/16 v3, 0x7d0

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    .line 790
    const-string v3, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/FacebookService;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/method/ServiceOperation;

    .line 794
    new-instance v4, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v5, Lcom/facebook/katana/service/FacebookService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/facebook/katana/service/FacebookService$2;-><init>(Lcom/facebook/katana/service/FacebookService;Lcom/facebook/katana/service/method/ServiceOperation;)V

    invoke-direct {v4, v5}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    goto/16 :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_5
        0x21 -> :sswitch_6
        0x22 -> :sswitch_4
        0x23 -> :sswitch_7
        0x24 -> :sswitch_8
        0x25 -> :sswitch_9
        0x32 -> :sswitch_f
        0x33 -> :sswitch_10
        0x34 -> :sswitch_11
        0x3c -> :sswitch_12
        0x3d -> :sswitch_13
        0x3e -> :sswitch_14
        0x3f -> :sswitch_15
        0x40 -> :sswitch_16
        0x41 -> :sswitch_17
        0x42 -> :sswitch_18
        0x43 -> :sswitch_19
        0x44 -> :sswitch_1a
        0x45 -> :sswitch_1b
        0x46 -> :sswitch_1c
        0x47 -> :sswitch_1d
        0x48 -> :sswitch_1e
        0x49 -> :sswitch_1e
        0x4a -> :sswitch_1e
        0x4b -> :sswitch_1e
        0x4c -> :sswitch_1e
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_20
        0x50 -> :sswitch_c
        0x51 -> :sswitch_e
        0x52 -> :sswitch_a
        0x53 -> :sswitch_b
        0x5a -> :sswitch_28
        0x5b -> :sswitch_28
        0x5c -> :sswitch_28
        0x64 -> :sswitch_1f
        0x6e -> :sswitch_21
        0x6f -> :sswitch_23
        0x70 -> :sswitch_24
        0x71 -> :sswitch_25
        0x72 -> :sswitch_26
        0x73 -> :sswitch_22
        0x79 -> :sswitch_29
        0x7a -> :sswitch_2a
        0x83 -> :sswitch_2b
        0x84 -> :sswitch_2c
        0x85 -> :sswitch_2d
        0x8c -> :sswitch_2e
        0xc9 -> :sswitch_28
        0xca -> :sswitch_28
        0xcb -> :sswitch_28
        0xcc -> :sswitch_28
        0xcd -> :sswitch_28
        0xd3 -> :sswitch_27
        0x12c -> :sswitch_28
        0x3e8 -> :sswitch_2f
        0x3e9 -> :sswitch_2f
        0x44c -> :sswitch_d
    .end sparse-switch
.end method
