.class public Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "FqlGetTaggedUserAlbum.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/katana/model/FacebookUser;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 36
    invoke-static {p4, p5}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->b(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a:Ljava/util/List;

    .line 39
    invoke-static {p1, v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    .line 41
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    cmp-long v1, v1, p4

    if-nez v1, :cond_0

    .line 42
    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->f:Lcom/facebook/katana/model/FacebookUser;

    .line 43
    iput-boolean v6, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->g:Z

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p1, p4, p5}, Lcom/facebook/katana/model/FacebookUserPersistent;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookUserPersistent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->f:Lcom/facebook/katana/model/FacebookUser;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->g:Z

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT pid FROM photo_tag WHERE subject = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY created DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 130
    const-string v0, "extended_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    .line 143
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->l()V

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 23
    .parameter

    .prologue
    .line 71
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 74
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 75
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 76
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 77
    throw v1

    .line 79
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 80
    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_3

    .line 81
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 82
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "pid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed JSON"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    :goto_1
    return-void

    .line 98
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->g:Z

    if-eqz v1, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->o:Landroid/content/Context;

    const v2, 0x7f0b0196

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    :goto_2
    new-instance v1, Lcom/facebook/katana/model/FacebookAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    const-string v16, "friends-of-friends"

    const-string v17, "tagged"

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    invoke-direct/range {v1 .. v21}, Lcom/facebook/katana/model/FacebookAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BJ[Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->o:Landroid/content/Context;

    const v2, 0x7f0b0195

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a:Ljava/util/List;

    return-object v0
.end method
