.class Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/UploadShareMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1669
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/UploadShareMethod;
    .locals 2

    .prologue
    .line 1673
    new-instance v1, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/UploadShareMethod;-><init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;->b()Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    move-result-object v0

    return-object v0
.end method
