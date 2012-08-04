.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/FriendListPickerCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/FriendListPickerCache;
    .locals 2

    .prologue
    .line 73
    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    const-class v0, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/Clock;

    invoke-direct {v1, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;-><init>(Lcom/facebook/orca/common/util/Clock;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;->b()Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    move-result-object v0

    return-object v0
.end method
