.class public Lcom/facebook/orca/protocol/methods/GetMeUserMethod;
.super Ljava/lang/Object;
.source "GetMeUserMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Void;",
        "Lcom/facebook/orca/server/GetMeUserResult;",
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->a:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 34
    return-void
.end method

.method private a()Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 39
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-static {}, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "meUser"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method private a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/GetMeUserResult;
    .locals 5
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 60
    const-string v0, "user"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 61
    const-string v2, "profile"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->a:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->b:Lcom/facebook/orca/users/UserSerialization;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - multiple result users"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 68
    new-instance v1, Lcom/facebook/orca/server/GetMeUserResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/facebook/orca/server/GetMeUserResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/users/User;J)V

    return-object v1
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 46
    const-string v1, "user"

    const-string v2, "SELECT uid, first_name, last_name, contact_email, phones, is_pushable, affiliations FROM user WHERE uid=me()"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "profile"

    const-string v2, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id=me()"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->a()Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/GetMeUserResult;

    move-result-object v0

    return-object v0
.end method
