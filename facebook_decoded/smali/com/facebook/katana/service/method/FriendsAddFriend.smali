.class public Lcom/facebook/katana/service/method/FriendsAddFriend;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "FriendsAddFriend.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v3, "POST"

    const-string v4, "facebook.friends_add"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->a:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->e:Ljava/util/Map;

    const-string v1, "uid"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-direct {p0, p3, p5}, Lcom/facebook/katana/service/method/FriendsAddFriend;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v3, "POST"

    const-string v4, "facebook.friends_add"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 58
    iput-object p4, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->a:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->e:Ljava/util/Map;

    const-string v1, "uids"

    const-string v2, ","

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0, p3, p5}, Lcom/facebook/katana/service/method/FriendsAddFriend;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/facebook/katana/service/method/FriendsAddFriend;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FriendsAddFriend;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 90
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

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/facebook/katana/service/method/FriendsAddFriend;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FriendsAddFriend;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 113
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

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->e:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
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
    .line 135
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

    .line 136
    iget-object v2, p0, Lcom/facebook/katana/service/method/FriendsAddFriend;->a:Ljava/util/List;

    invoke-virtual {v0, p5}, Lcom/facebook/katana/binding/AppSessionListener;->c(I)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v1, Lcom/facebook/katana/service/method/FriendsAddFriend;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    .line 129
    :cond_0
    return-void
.end method
