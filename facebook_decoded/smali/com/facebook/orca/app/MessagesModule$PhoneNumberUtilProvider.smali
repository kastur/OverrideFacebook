.class Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberUtil;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2192
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2192
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 2196
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2192
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;->b()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0
.end method
