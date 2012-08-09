.class public Lcom/facebook/orca/protocol/methods/UploadShareMethod;
.super Ljava/lang/Object;
.source "UploadShareMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/attachments/MediaResource;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 29
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 9
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaAttachment;->e()Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v7

    .line 36
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 37
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "attached_files"

    const-string v2, "attach"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 38
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "messaging_attachment"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 40
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "attachment-upload"

    const-string v2, "POST"

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaAttachment;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    new-instance v6, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    const-string v8, "attach"

    invoke-direct {v6, v8, v7}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 52
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/orca/attachments/MediaResource;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
