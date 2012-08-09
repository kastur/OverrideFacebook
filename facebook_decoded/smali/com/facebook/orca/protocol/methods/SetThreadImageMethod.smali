.class public Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;
.super Ljava/lang/Object;
.source "SetThreadImageMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/ModifyThreadParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 30
    return-void
.end method

.method private a(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 35
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->e()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->b(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v6

    .line 45
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "setThreadImage"

    const-string v2, "POST"

    const-string v3, "method/messaging.setthreadimage"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "delete"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/apache/http/entity/mime/FormBodyPart;
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->e()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to attach image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->e()Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to attach image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v1, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    const-string v2, "image"

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
