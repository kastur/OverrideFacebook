.class Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSmsServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2414
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2414
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/sms/MmsSmsServiceHandler;
    .locals 5

    .prologue
    .line 2418
    new-instance v4, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    const-class v0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;

    const-class v1, Lcom/facebook/orca/sms/SmsFetchThreadHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/SmsFetchThreadHandler;

    const-class v2, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    const-class v3, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/sms/MmsSmsServiceHandler;-><init>(Lcom/facebook/orca/sms/SmsFetchThreadsHandler;Lcom/facebook/orca/sms/SmsFetchThreadHandler;Lcom/facebook/orca/sms/SmsSendMessageHandler;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V

    return-object v4
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2414
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;->b()Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    move-result-object v0

    return-object v0
.end method
