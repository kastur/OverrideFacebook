.class public Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;
.super Ljava/lang/Object;
.source "SendAnalyticLogsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 29
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "message"

    invoke-static {p0}, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "compressed"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "sendAnaliyticsLog"

    const-string v2, "POST"

    const-string v3, "method/logging.mobilelogs"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 49
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/facebook/apache/http/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 54
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 55
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 56
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
