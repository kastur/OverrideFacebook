.class public Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;
.super Ljava/lang/Object;
.source "VaultImageUploadMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;",
        "Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 87
    const-string v0, "error code: %d, msg: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v0, "vault_image_upload_api bad response"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;

    invoke-direct {v0, v7, v8}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;-><init>(J)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;->a(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 97
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    .line 98
    cmp-long v0, v1, v7

    if-nez v0, :cond_1

    .line 99
    const-string v0, "vault_image_upload_api missing id"

    const-string v3, "missing id in response: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;-><init>(J)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 43
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "client_image_hash"

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "date_taken"

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "device_oid"

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->d()J

    move-result-wide v0

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 49
    new-instance v2, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v3, "existing_fbid"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    :try_start_0
    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 58
    const-string v0, "size: %d bytes, params: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 61
    new-instance v3, Lcom/facebook/orca/protocol/base/ByteArrayBody;

    const-string v5, "image/jpeg"

    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v0}, Lcom/facebook/orca/protocol/base/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {v1, v7}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    .line 69
    new-instance v6, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    const-string v0, "source"

    invoke-direct {v6, v0, v3}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 71
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "vaultImageUpload"

    const-string v2, "POST"

    const-string v3, "me/vaultimages"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;

    invoke-static {p1}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;->a(Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {p2}, Lcom/facebook/katana/service/vault/methods/VaultImageUploadMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/katana/service/vault/methods/VaultImageUploadResult;

    move-result-object v0

    return-object v0
.end method
