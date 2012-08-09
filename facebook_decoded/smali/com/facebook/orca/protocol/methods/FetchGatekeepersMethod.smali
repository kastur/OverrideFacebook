.class public Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;
.super Ljava/lang/Object;
.source "FetchGatekeepersMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 25
    const-string v0, "messaging"

    const-string v1, "messenger_mqtt_android"

    const-string v2, "messenger_sms_android"

    const-string v3, "messenger_phone_verification_android"

    const-string v4, "messenger_client_analytics_android"

    const-string v5, "messenger_client_core_analytics_android"

    const-string v6, "messenger_presence_android"

    const-string v7, "messenger_nux_android"

    const-string v8, "messenger_client_sms_android"

    const-string v9, "messenger_read_receipts_android"

    const-string v10, "messenger_more_mobile_friends_android"

    const-string v11, "messenger_show_contact_card_android"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "messenger_fof_android"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "messenger_last_active_android"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "messenger_inapp_notify_android"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "messenger_auth_expire_session_android"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "messenger_switch_user_text_android"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "messenger_logout_notify_android"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "messenger_audio_message_android"

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Landroid/os/Bundle;
    .locals 6
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 71
    const-string v0, "gk"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 74
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 75
    const-string v4, "project_name"

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v3

    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v2
.end method

.method private static a()Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 50
    const-string v1, "gk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT project_name, result FROM project_gating WHERE project_name IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 57
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    const-string v3, "json"

    invoke-direct {v1, v2, v3}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "queries"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchAppInfo"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a()Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
