.class final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
.super Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method final verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$100(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    #calls: Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {p2, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->access$400(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->access$500()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    :goto_1
    array-length v3, v4

    if-eq v3, v2, :cond_2

    aget-object v3, v4, v0

    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    #calls: Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    invoke-static {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$300(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-lez v3, :cond_6

    if-ltz v0, :cond_6

    aget-object v6, v4, v0

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    if-ltz v0, :cond_7

    aget-object v0, v4, v0

    aget-object v3, v5, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
