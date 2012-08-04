.class Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/dispatch/DispatchServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2394
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/dispatch/DispatchServiceHandler;
    .locals 5

    .prologue
    .line 2398
    new-instance v2, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    const-class v0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    const-class v1, Lcom/facebook/orca/protocol/WebServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/WebServiceHandler;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {p0, v3, v4}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/dispatch/DispatchServiceHandler;-><init>(Lcom/facebook/orca/sms/MmsSmsServiceHandler;Lcom/facebook/orca/protocol/WebServiceHandler;Ljavax/inject/Provider;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;->b()Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    move-result-object v0

    return-object v0
.end method
