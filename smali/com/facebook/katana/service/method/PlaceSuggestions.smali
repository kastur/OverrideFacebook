.class public Lcom/facebook/katana/service/method/PlaceSuggestions;
.super Lcom/facebook/katana/service/method/GraphApiMethod;
.source "PlaceSuggestions.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookPlace;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v3, "POST"

    const-string v4, "suggestions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p3, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/GraphApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p3, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/PlaceSuggestions;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/katana/service/method/PlaceSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPlace;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)",
            "Lcom/facebook/katana/service/method/PlaceSuggestions;"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-object p0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->j:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;)",
            "Lcom/facebook/katana/service/method/PlaceSuggestions;"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    .line 94
    const-string v1, "Topics are only supported for FacebookPageFull"

    instance-of v0, v0, Lcom/facebook/katana/model/FacebookPageFull;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Z)V

    .line 96
    iput-object p1, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->i:Ljava/util/Set;

    goto :goto_0
.end method

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
    .line 174
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

    .line 175
    invoke-virtual {v0, p5}, Lcom/facebook/katana/binding/AppSessionListener;->j(I)V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 1
    .parameter

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 1
    .parameter

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;
    .locals 1
    .parameter

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 111
    .line 112
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->e:Ljava/util/Map;

    const-string v1, "name"

    iget-object v4, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPage;->mLocation:Ljava/util/Map;

    .line 118
    if-eqz v0, :cond_0

    const-string v4, "street"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "street"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v4, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    const-string v1, "address"

    iget-object v4, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->e:Ljava/util/Map;

    const-string v4, "location"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mPhone:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->e:Ljava/util/Map;

    const-string v1, "phone"

    iget-object v4, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->i:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 138
    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mTopicList:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->i:Ljava/util/Set;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    .line 143
    iget-wide v6, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_2

    .line 125
    :catch_0
    move-exception v1

    const-string v1, "PlaceSuggestions"

    const-string v4, "JSONException on encoding"

    invoke-static {v1, v4}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->e:Ljava/util/Map;

    const-string v4, "categories"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->j:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 150
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 152
    iget-wide v6, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_3

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->e:Ljava/util/Map;

    const-string v4, "duplicates"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 158
    :cond_5
    if-nez v1, :cond_6

    .line 166
    :goto_4
    return-object v5

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->o:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    const-string v0, "PlaceSuggestions"

    const-string v1, "null AppSession, could not save suggestions"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 166
    :cond_7
    iget-object v1, p0, Lcom/facebook/katana/service/method/PlaceSuggestions;->o:Landroid/content/Context;

    const/16 v3, 0x3e9

    const/16 v4, 0x3fc

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    move v1, v3

    goto/16 :goto_0
.end method
