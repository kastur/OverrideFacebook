.class public Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;
.super Ljava/lang/Object;
.source "VaultGetSyncedImageStatusMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;",
        "Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;
    .locals 3
    .parameter

    .prologue
    .line 50
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 52
    const-string v1, "vault"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 55
    :cond_0
    const-class v1, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;

    return-object v0
.end method

.method private static a(Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 28
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 29
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "hashes"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "time_start"

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "vault"

    invoke-static {v1, v6}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "Checking synced images since %s: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 37
    :cond_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "vaultGetSyncedImageStatus"

    const-string v2, "GET"

    const-string v3, "%s/vaultlocalimages"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;

    invoke-static {p1}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;->a(Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p2}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;

    move-result-object v0

    return-object v0
.end method
