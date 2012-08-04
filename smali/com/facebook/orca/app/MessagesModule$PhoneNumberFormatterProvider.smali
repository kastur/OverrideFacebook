.class Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/PhoneNumberFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2200
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2200
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/util/PhoneNumberFormatter;
    .locals 4

    .prologue
    .line 2204
    new-instance v2, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v3}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Landroid/telephony/TelephonyManager;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2200
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;->b()Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    move-result-object v0

    return-object v0
.end method
