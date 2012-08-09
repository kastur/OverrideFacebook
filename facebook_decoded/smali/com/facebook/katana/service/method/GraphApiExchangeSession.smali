.class public Lcom/facebook/katana/service/method/GraphApiExchangeSession;
.super Lcom/facebook/katana/service/method/GraphApiMethod;
.source "GraphApiExchangeSession.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "POST"

    const-string v1, "oauth/exchange_sessions"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/service/method/GraphApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->e:Ljava/util/Map;

    const-string v1, "sessions"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->e:Ljava/util/Map;

    const-string v1, "client_id"

    const-wide v2, 0x51a67c8e50L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->e:Ljava/util/Map;

    const-string v1, "client_secret"

    const-string v2, "62f8ce9f74b12f84c123cc23437a4a32"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 45
    new-instance v2, Lcom/facebook/katana/service/method/GraphApiExchangeSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Lcom/facebook/katana/service/method/GraphApiExchangeSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/16 v3, 0x3e9

    const/16 v4, 0x3fc

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    .line 60
    new-instance v0, Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookSessionInfo;-><init>(Lcom/facebook/katana/model/FacebookSessionInfo;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookSessionInfo;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookSessionInfo;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiExchangeSession;->a:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method
