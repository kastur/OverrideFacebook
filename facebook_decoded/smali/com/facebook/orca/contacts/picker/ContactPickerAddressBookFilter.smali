.class public Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;
.super Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;
.source "ContactPickerAddressBookFilter.java"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PhoneUserIterator;

    .line 94
    const/16 v1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;I)V

    .line 97
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 105
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 129
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 130
    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a(Lcom/facebook/orca/users/UserIdentifier;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v4, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 132
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v5, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/CharSequence;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;
    .locals 8
    .parameter

    .prologue
    .line 43
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 44
    const-string v0, "ContactPickerAddressBookFilter.Filtering"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    invoke-direct {v2}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;-><init>()V

    .line 47
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 50
    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 53
    invoke-direct {p0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a(Ljava/util/List;)V

    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 56
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    new-instance v6, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    sget-object v7, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {v6, v5, v7}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 65
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;->a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V

    .line 66
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 67
    new-instance v4, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-direct {v4, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 68
    iput-object v4, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 69
    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()I

    move-result v0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 80
    const-string v0, "orca:ContactPickerAddressBookFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 82
    :goto_2
    return-object v2

    .line 47
    :cond_1
    :try_start_1
    const-string v0, ""

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    const-string v3, "orca:ContactPickerAddressBookFilter"

    const-string v4, "Exception during filtering"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 80
    const-string v0, "orca:ContactPickerAddressBookFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 80
    const-string v1, "orca:ContactPickerAddressBookFilter"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 81
    throw v0
.end method
