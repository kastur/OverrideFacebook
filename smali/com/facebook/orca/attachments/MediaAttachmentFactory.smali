.class public Lcom/facebook/orca/attachments/MediaAttachmentFactory;
.super Ljava/lang/Object;
.source "MediaAttachmentFactory.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/orca/attachments/OutgoingContentAttachment;

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/attachments/OutgoingContentAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    .line 40
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Lcom/facebook/orca/attachments/FileAttachment;

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/attachments/FileAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Lcom/facebook/orca/attachments/UnknownAttachmentTypeException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/attachments/UnknownAttachmentTypeException;-><init>(Landroid/net/Uri;)V

    throw v1
.end method

.method public final b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method
