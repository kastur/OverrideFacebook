.class public Lcom/facebook/katana/service/method/PlacesRemoveTag;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PlacesRemoveTag.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookPost;

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/model/FacebookPost;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string v3, "GET"

    const-string v4, "places.removeTag"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 45
    iput-object p5, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->a:Lcom/facebook/katana/model/FacebookPost;

    .line 46
    iput-wide p6, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->f:J

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->e:Ljava/util/Map;

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

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->e:Ljava/util/Map;

    const-string v1, "post_id"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->a:Lcom/facebook/katana/model/FacebookPost;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->e:Ljava/util/Map;

    const-string v1, "tagged_uid"

    iget-wide v2, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/facebook/katana/service/method/PlacesRemoveTag;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v2

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/PlacesRemoveTag;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/model/FacebookPost;J)V

    .line 76
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 89
    iget-object v2, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->a:Lcom/facebook/katana/model/FacebookPost;

    iget-wide v2, p0, Lcom/facebook/katana/service/method/PlacesRemoveTag;->f:J

    invoke-virtual {v0, p5}, Lcom/facebook/katana/binding/AppSessionListener;->d(I)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
