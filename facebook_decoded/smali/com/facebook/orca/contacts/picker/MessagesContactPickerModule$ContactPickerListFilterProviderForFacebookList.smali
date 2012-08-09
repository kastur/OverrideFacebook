.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "messenger_fof_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;-><init>()V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 4

    .prologue
    .line 137
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 138
    sget-object v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    const-class v1, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;)V

    move-object v0, v3

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method
