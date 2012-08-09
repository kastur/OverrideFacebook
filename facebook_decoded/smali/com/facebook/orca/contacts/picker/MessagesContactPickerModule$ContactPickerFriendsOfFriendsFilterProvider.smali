.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;
    .locals 3

    .prologue
    .line 121
    new-instance v2, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    const-class v1, Lcom/facebook/orca/protocol/methods/SearchUsersMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/SearchUsersMethod;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/protocol/methods/SearchUsersMethod;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;->b()Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    move-result-object v0

    return-object v0
.end method
