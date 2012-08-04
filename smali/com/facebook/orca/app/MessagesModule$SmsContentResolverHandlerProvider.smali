.class Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/SmsContentResolverHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2474
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2474
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/sms/SmsContentResolverHandler;
    .locals 5

    .prologue
    .line 2478
    new-instance v3, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/users/User;

    const-class v2, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v1, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/PhoneUserIterator;

    const-class v2, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/facebook/orca/sms/SmsContentResolverHandler;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/facebook/orca/users/PhoneUserIterator;Lcom/facebook/orca/common/util/PhoneNumberFormatter;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2474
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;->b()Lcom/facebook/orca/sms/SmsContentResolverHandler;

    move-result-object v0

    return-object v0
.end method
