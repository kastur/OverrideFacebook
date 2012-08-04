.class public Lcom/facebook/katana/service/method/PhotosAddComment;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PhotosAddComment.java"


# instance fields
.field private final a:J

.field private f:Lcom/facebook/katana/model/FacebookPhotoComment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v3, "GET"

    const-string v4, "photos_addcomment"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 45
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-wide p4, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->a:J

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 11
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v2, Lcom/facebook/katana/service/method/PhotosAddComment;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 63
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoComment;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v2, "pid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->a:J

    iget-object v4, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->e:Ljava/util/Map;

    const-string v5, "body"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/FacebookPhotoComment;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->f:Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 66
    return-void
.end method

.method public final h()Lcom/facebook/katana/model/FacebookPhotoComment;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosAddComment;->f:Lcom/facebook/katana/model/FacebookPhotoComment;

    return-object v0
.end method
