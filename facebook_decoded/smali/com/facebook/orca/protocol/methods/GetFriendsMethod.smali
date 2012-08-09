.class public Lcom/facebook/orca/protocol/methods/GetFriendsMethod;
.super Ljava/lang/Object;
.source "GetFriendsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/GetFriendsParams;",
        "Lcom/facebook/orca/server/GetFriendsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

.field private final b:Lcom/facebook/orca/users/UserSerialization;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->a:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 40
    return-void
.end method

.method private a(Lcom/facebook/orca/server/GetFriendsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 45
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsParams;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p1, v0}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->b(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 55
    :goto_0
    const-string v1, "users"

    const-string v2, "SELECT uid, first_name, last_name, name, contact_email, phones, is_pushable, birthday_date FROM user WHERE uid IN (SELECT uid2 FROM #friends)"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "profiles"

    const-string v2, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id IN (SELECT uid2 FROM #friends)"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "queries"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "getFriends"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 53
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->a(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/GetFriendsResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 117
    new-instance v3, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v3, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 119
    const-string v0, "friends"

    invoke-virtual {v3, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 120
    const-string v1, "users"

    invoke-virtual {v3, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 121
    const-string v2, "profiles"

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 122
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing friends"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->a:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->b:Lcom/facebook/orca/users/UserSerialization;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v2, v4, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsParams;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 134
    const-string v0, "friends_sync"

    invoke-virtual {v3, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 136
    const-string v5, "is_removed"

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    const-string v5, "uid2"

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v5, v1

    .line 149
    :goto_1
    new-instance v0, Lcom/facebook/orca/server/GetFriendsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsParams;->c()Z

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/GetFriendsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;ZLcom/google/common/collect/ImmutableList;Ljava/lang/String;J)V

    return-object v0

    .line 142
    :cond_4
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->b(Lcom/facebook/orca/server/GetFriendsParams;)Landroid/util/Pair;

    move-result-object v1

    .line 144
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v5, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->b(Lcom/facebook/orca/server/GetFriendsParams;)Landroid/util/Pair;

    move-result-object v0

    .line 78
    const-string v1, "friends"

    const-string v2, "SELECT uid2, communication_rank FROM friend WHERE uid1=me() ORDER BY communication_rank DESC LIMIT %1$d,%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static b(Lcom/facebook/orca/server/GetFriendsParams;)Landroid/util/Pair;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/GetFriendsParams;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/server/GetFriendsParams;->b()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/facebook/orca/server/GetFriendsParams;->a()I

    move-result v1

    .line 110
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/server/GetFriendsParams;->a()I

    move-result v1

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 88
    const-string v0, "friends_sync"

    const-string v1, "SELECT uid2, is_removed FROM friend_sync where uid1=me() AND update_time >= %1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/orca/server/GetFriendsParams;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "friends"

    const-string v1, "SELECT uid2, communication_rank FROM friend WHERE uid1=me() AND uid2 IN (SELECT uid2 FROM #friends_sync)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/GetFriendsParams;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->a(Lcom/facebook/orca/server/GetFriendsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/GetFriendsParams;

    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;->a(Lcom/facebook/orca/server/GetFriendsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/GetFriendsResult;

    move-result-object v0

    return-object v0
.end method
