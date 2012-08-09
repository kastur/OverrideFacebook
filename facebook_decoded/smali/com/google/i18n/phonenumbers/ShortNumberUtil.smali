.class public Lcom/google/i18n/phonenumbers/ShortNumberUtil;
.super Ljava/lang/Object;


# static fields
.field private static phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberUtil;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method
