.class public Lcom/facebook/orca/protocol/methods/AddMembersMethod;
.super Ljava/lang/Object;
.source "AddMembersMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/AddMembersParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/PickedUserUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    .line 26
    return-void
.end method

.method private a(Lcom/facebook/orca/server/AddMembersParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {p1}, Lcom/facebook/orca/server/AddMembersParams;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/PickedUserUtils;->a(Ljava/util/List;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-virtual {p1}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "to"

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "addMembers"

    const-string v2, "POST"

    const-string v3, "/participants"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/orca/server/AddMembersParams;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a(Lcom/facebook/orca/server/AddMembersParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
