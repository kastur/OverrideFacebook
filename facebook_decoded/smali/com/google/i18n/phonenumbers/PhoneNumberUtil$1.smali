.class Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct/range {v0 .. v6}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method
