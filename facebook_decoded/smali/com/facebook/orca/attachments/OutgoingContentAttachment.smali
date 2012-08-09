.class public Lcom/facebook/orca/attachments/OutgoingContentAttachment;
.super Lcom/facebook/orca/attachments/MediaAttachment;
.source "OutgoingContentAttachment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/attachments/MediaAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    .line 21
    const-string v0, "content"

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/OutgoingContentAttachment;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/OutgoingContentAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;-><init>(Lcom/facebook/orca/attachments/OutgoingContentAttachment;)V

    return-object v0
.end method
