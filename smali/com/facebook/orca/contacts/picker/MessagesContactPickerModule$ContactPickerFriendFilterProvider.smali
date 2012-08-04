.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;
    .locals 3

    .prologue
    .line 109
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/presence/PresenceManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;->b()Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    move-result-object v0

    return-object v0
.end method
