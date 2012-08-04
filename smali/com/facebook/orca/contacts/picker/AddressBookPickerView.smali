.class public Lcom/facebook/orca/contacts/picker/AddressBookPickerView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "AddressBookPickerView.java"


# instance fields
.field private a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;

.field private c:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

.field private d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 60
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 62
    const-class v2, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a:Ljavax/inject/Provider;

    .line 63
    const-class v2, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 64
    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;

    invoke-direct {v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;-><init>()V

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;

    .line 66
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {v1, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V

    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 168
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 175
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    new-instance v3, Lcom/facebook/orca/users/UserPhoneNumber;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v4, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v4, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/users/Name;

    invoke-direct {v2, v5, v5, v1}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v1, v0, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->f()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$2;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->f:Z

    .line 97
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 101
    const-string v0, "loadContactsOnWorkerThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->e()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iput-boolean v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->f:Z

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 108
    const-string v0, "orca:AddressBookPickerView"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$3;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void

    .line 105
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->f:Z

    throw v0
.end method

.method private e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, "getContacts"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PhoneUserIterator;

    .line 128
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a()V

    .line 130
    :try_start_0
    const-string v3, "#fetch"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v1

    .line 137
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 141
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 142
    return-object v2
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->e:Ljava/util/List;

    .line 148
    if-nez v4, :cond_0

    .line 149
    const-string v0, "orca:AddressBookPickerView"

    const-string v1, "Not updating list b/c contacts aren\'t yet loaded."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    move v2, v3

    .line 155
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 156
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 157
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 158
    new-instance v7, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v7, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 159
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v8, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-direct {v1, v7, v8, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 155
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->g:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 81
    return-void
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 86
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->d:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 209
    return-void
.end method
