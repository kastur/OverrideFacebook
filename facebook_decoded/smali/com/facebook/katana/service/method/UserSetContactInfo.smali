.class public Lcom/facebook/katana/service/method/UserSetContactInfo;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "UserSetContactInfo.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v3, "POST"

    const-string v4, "userSetContactInfo"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/service/method/UserSetContactInfo;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/service/method/UserSetContactInfo;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/facebook/katana/service/method/UserSetContactInfo;->e:Ljava/util/Map;

    const-string v1, "cell"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/facebook/katana/service/method/UserSetContactInfo;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/UserSetContactInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    .line 62
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
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
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

    .line 85
    invoke-virtual {v0, p5}, Lcom/facebook/katana/binding/AppSessionListener;->b(I)V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const-string v0, "true"

    invoke-virtual {p1, v0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v1, Lcom/facebook/katana/service/method/UserSetContactInfo;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method
