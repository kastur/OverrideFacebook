.class public Lcom/facebook/katana/service/method/PlacesEditCheckin;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PlacesEditCheckin.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;Ljava/util/Set;)V
    .locals 7
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v3, "GET"

    const-string v4, "places.editCheckin"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->e:Ljava/util/Map;

    const-string v1, "checkin_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    if-eqz p7, :cond_0

    .line 68
    const-string v1, "message"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_0
    if-eqz p8, :cond_1

    .line 71
    const-string v1, "tagged_uids"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->e:Ljava/util/Map;

    const-string v2, "checkin_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-wide p5, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->g:J

    .line 76
    iput-object p7, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->a:Ljava/lang/String;

    .line 77
    iput-object p8, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->f:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/facebook/katana/service/method/PlacesEditCheckin;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v2

    move-wide v5, p2

    move-object v7, v2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/method/PlacesEditCheckin;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;Ljava/util/Set;)V

    .line 104
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
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    .line 134
    const-string v0, "places:last_checkin"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    const-class v1, Lcom/facebook/katana/model/FacebookCheckin;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookCheckin;

    .line 140
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    iget-wide v3, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->g:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->f:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTaggedUids:Ljava/util/List;

    .line 143
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->n()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    const-string v1, "places:last_checkin"

    invoke-static {p2, v1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 152
    iget-wide v2, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->g:J

    iget-object v2, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PlacesEditCheckin;->f:Ljava/util/Set;

    invoke-virtual {v0, p5, p6, p7}, Lcom/facebook/katana/binding/AppSessionListener;->i(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method
