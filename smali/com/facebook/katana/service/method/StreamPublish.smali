.class public Lcom/facebook/katana/service/method/StreamPublish;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "StreamPublish.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private final r:Lcom/facebook/katana/model/FacebookProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/katana/service/method/StreamPublish;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/StreamPublish;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/Long;Lcom/facebook/katana/model/FacebookProfile;Ljava/lang/String;Z)V
    .locals 8
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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v3, 0x0

    const-string v4, "GET"

    const-string v5, "stream.publish"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 173
    iput-wide p5, p0, Lcom/facebook/katana/service/method/StreamPublish;->g:J

    .line 174
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/facebook/katana/service/method/StreamPublish;->h:Ljava/lang/String;

    .line 176
    if-eqz p9, :cond_1

    .line 177
    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->f:Ljava/util/Set;

    .line 181
    :goto_0
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/StreamPublish;->i:Z

    .line 183
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/katana/service/method/StreamPublish;->r:Lcom/facebook/katana/model/FacebookProfile;

    .line 185
    iget-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->e:Ljava/util/Map;

    const-string v2, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->e:Ljava/util/Map;

    const-string v2, "session_key"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->e:Ljava/util/Map;

    const-string v2, "target_id"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->e:Ljava/util/Map;

    const-string v2, "message"

    invoke-interface {v1, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    if-eqz p12, :cond_0

    .line 199
    iget-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->e:Ljava/util/Map;

    const-string v2, "uid"

    move-object/from16 v0, p12

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/katana/service/method/StreamPublish;->f:Ljava/util/Set;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;ZLcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;
    .locals 17
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
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;Z",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v16

    .line 66
    new-instance v1, Lcom/facebook/katana/service/method/StreamPublish;

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v13, p7

    move/from16 v15, p6

    invoke-direct/range {v1 .. v15}, Lcom/facebook/katana/service/method/StreamPublish;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/Long;Lcom/facebook/katana/model/FacebookProfile;Ljava/lang/String;Z)V

    .line 70
    const/16 v5, 0x3e9

    const/16 v6, 0x3fc

    const/4 v7, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v16

    .line 94
    new-instance v3, Lcom/facebook/katana/model/FacebookPost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/StreamPublish;->j:Ljava/lang/String;

    const-wide v5, 0x51a67c8e50L

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/facebook/katana/service/method/StreamPublish;->g:J

    move-object/from16 v0, v16

    iget-wide v11, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/facebook/katana/service/method/StreamPublish;->g:J

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/katana/service/method/StreamPublish;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/katana/service/method/StreamPublish;->f:Ljava/util/Set;

    const v15, 0x7f0b04ae

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v3 .. v15}, Lcom/facebook/katana/model/FacebookPost;-><init>(Ljava/lang/String;JJJLjava/lang/String;Lcom/facebook/katana/model/FacebookPost$Attachment;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/StreamPublish;->r:Lcom/facebook/katana/model/FacebookProfile;

    if-nez v4, :cond_3

    .line 106
    new-instance v4, Lcom/facebook/katana/model/FacebookProfile;

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v7

    iget-object v7, v7, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v8

    iget-object v8, v8, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/facebook/katana/model/FacebookPost;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 113
    :goto_1
    const/16 v4, 0xc8

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/katana/service/method/StreamPublish;->g:J

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 117
    const-wide/16 v4, -0x1

    sget-object v6, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->b(JLcom/facebook/katana/model/FacebookStreamType;)Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-result-object v4

    .line 120
    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4, v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/katana/service/method/StreamPublish;->g:J

    sget-object v6, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->b(JLcom/facebook/katana/model/FacebookStreamType;)Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-result-object v4

    .line 126
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4, v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 132
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/binding/AppSessionListener;

    .line 133
    move/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/katana/binding/AppSessionListener;->g(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 94
    :cond_2
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/method/StreamPublish;->r:Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v3, v4}, Lcom/facebook/katana/model/FacebookPost;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 138
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/facebook/katana/service/method/StreamPublish;->i:Z

    if-eqz v3, :cond_5

    .line 141
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 142
    const-string v4, "com.facebook.katana.widget.publish.result"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v4, "extra_error_code"

    move/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V

    .line 145
    const/16 v3, 0xc8

    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    .line 147
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_5
    :goto_3
    return-void

    .line 149
    :catch_0
    move-exception v3

    .line 150
    sget-object v4, Lcom/facebook/katana/service/method/StreamPublish;->a:Ljava/lang/String;

    const-string v5, "widget update failed: "

    invoke-static {v4, v5, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v2, Lcom/facebook/katana/service/method/StreamPublish;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    .line 220
    :cond_0
    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/StreamPublish;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/StreamPublish;->j:Ljava/lang/String;

    .line 222
    return-void
.end method
