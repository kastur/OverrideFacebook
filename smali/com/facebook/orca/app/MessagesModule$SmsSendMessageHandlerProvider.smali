.class Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/SmsSendMessageHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2461
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/sms/SmsSendMessageHandler;
    .locals 5

    .prologue
    .line 2465
    new-instance v3, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v4

    const-class v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    const-class v1, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v2, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/facebook/orca/sms/SmsSendMessageHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/protocol/methods/PickedUserUtils;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2461
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;->b()Lcom/facebook/orca/sms/SmsSendMessageHandler;

    move-result-object v0

    return-object v0
.end method
