.class Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/AttachmentDataFactory;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/attachments/AttachmentDataFactory;
    .locals 3

    .prologue
    .line 798
    new-instance v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    const-class v0, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/auth/OrcaAuthenticationManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;->b()Lcom/facebook/orca/attachments/AttachmentDataFactory;

    move-result-object v0

    return-object v0
.end method
