.class public Lcom/facebook/orca/users/PhoneUserIterator;
.super Ljava/lang/Object;
.source "PhoneUserIterator.java"


# static fields
.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/facebook/orca/users/UserBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mimetype IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/email_v2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 151
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 86
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    return-void
.end method

.method private b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 235
    :try_start_0
    const-string v0, "parsePhone"

    const-string v1, "parsePhone"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 243
    new-instance v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-direct {v0, v1, v2, p2}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 95
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 99
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, v3}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    const-string v5, "contact_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;ILjava/util/List;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contact_id IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 80
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 158
    :cond_0
    return-void
.end method

.method public final c()Lcom/facebook/orca/users/User;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v7, 0x8

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-nez v0, :cond_3

    .line 174
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-object v0, v1

    .line 182
    :goto_0
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    iget-object v6, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v6}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    .line 188
    :cond_1
    new-instance v5, Lcom/facebook/orca/users/Name;

    invoke-direct {v5, v3, v4, v2}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2, v5}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 220
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 230
    :goto_2
    return-object v0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 178
    new-instance v3, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 179
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v6, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v3, v6, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_0

    .line 191
    :cond_4
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 194
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 196
    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v2

    .line 198
    if-nez v2, :cond_5

    .line 199
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    iget-object v5, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v5, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 202
    :cond_5
    new-instance v5, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-direct {v5, v3, v4}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_6
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 208
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 209
    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_2

    .line 212
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v2

    .line 213
    if-nez v2, :cond_7

    .line 214
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 215
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 217
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 227
    iput-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    .line 230
    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
