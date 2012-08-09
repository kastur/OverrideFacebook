.class public Lcom/facebook/katana/service/method/FriendRequestRespond;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "FriendRequestRespond.java"


# instance fields
.field private a:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const-string v3, "POST"

    const-string v4, "facebook.friends.confirm"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 42
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->e:Ljava/util/Map;

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

    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->e:Ljava/util/Map;

    const-string v1, "uid"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->e:Ljava/util/Map;

    const-string v2, "confirm"

    if-eqz p7, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-wide p5, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->a:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->f:Z

    .line 49
    return-void

    .line 45
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 59
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->f:Z

    .line 62
    :cond_0
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->a:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/FriendRequestRespond;->f:Z

    return v0
.end method
