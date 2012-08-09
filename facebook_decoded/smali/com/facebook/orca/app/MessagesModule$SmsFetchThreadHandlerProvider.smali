.class Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/SmsFetchThreadHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2451
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2451
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/sms/SmsFetchThreadHandler;
    .locals 2

    .prologue
    .line 2455
    new-instance v1, Lcom/facebook/orca/sms/SmsFetchThreadHandler;

    const-class v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-direct {v1, v0}, Lcom/facebook/orca/sms/SmsFetchThreadHandler;-><init>(Lcom/facebook/orca/sms/SmsContentResolverHandler;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2451
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;->b()Lcom/facebook/orca/sms/SmsFetchThreadHandler;

    move-result-object v0

    return-object v0
.end method
