.class public Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessagesContactPickerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 163
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 36
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 39
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 43
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 45
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerAddressBookFilterProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerAddressBookFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 47
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 51
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;

    invoke-direct {v1, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;-><init>(B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 54
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 59
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 63
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 67
    return-void
.end method
