.class public Lcom/facebook/orca/creation/StartThreadActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "StartThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

.field private g:Landroid/support/v4/app/FragmentManager;

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

.field private j:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private k:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

.field private m:Landroid/widget/TabHost;

.field private n:Landroid/view/View;

.field private o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

.field private p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setText(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/StartThreadActivity;Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/StartThreadActivity;Lcom/facebook/orca/users/UserWithIdentifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/UserWithIdentifier;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/PickedUser;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-boolean v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Z

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    const-string v1, "picked_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    .line 272
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    .line 249
    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v3

    if-nez v3, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 256
    :goto_1
    if-eqz v1, :cond_3

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    move-object v1, v0

    .line 260
    :goto_2
    if-eqz v1, :cond_2

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const-string v2, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :goto_3
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    goto :goto_0

    .line 252
    :cond_1
    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v3, :cond_4

    .line 253
    new-instance v1, Lcom/facebook/orca/users/UserKey;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/users/UserWithIdentifier;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 209
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "facebook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->g:Landroid/support/v4/app/FragmentManager;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    .line 180
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    iget-boolean v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->b(Z)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->b(Ljava/lang/String;)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_3
    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->g:Landroid/support/v4/app/FragmentManager;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Z

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c()V

    .line 286
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->chat_go_offline_menu_item:I

    sget v2, Lcom/facebook/orca/R$string;->chat_go_offline:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_chatvisibility:I

    iget-object v8, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v8}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_1
    return-object v7

    :cond_0
    move v4, v6

    .line 288
    goto :goto_0

    .line 291
    :cond_1
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->chat_go_online_menu_item:I

    sget v2, Lcom/facebook/orca/R$string;->chat_go_online:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_chatvisibility:I

    iget-object v8, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v8}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v8

    if-nez v8, :cond_2

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/facebook/orca/R$layout;->orca_start_thread:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    const-string v1, "return_result"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-boolean v6, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Z

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 98
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 99
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->g:Landroid/support/v4/app/FragmentManager;

    .line 102
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->h:Ljavax/inject/Provider;

    .line 104
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 105
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->j:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 106
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->m:Landroid/widget/TabHost;

    .line 107
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->h(I)Landroid/view/View;

    .line 108
    sget v0, Lcom/facebook/orca/R$id;->tabs_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->h(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->n:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 111
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    iget-object v2, p0, Lcom/facebook/orca/creation/StartThreadActivity;->m:Landroid/widget/TabHost;

    sget v3, Lcom/facebook/orca/R$id;->realtabcontent:I

    sget-object v4, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;->SHOW_HIDE:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;ILcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    .line 117
    iput v5, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v2, "facebook"

    sget v3, Lcom/facebook/orca/R$string;->facebook_tab:I

    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    invoke-virtual {v0, v2, v3, v8}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 125
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v2, "sms"

    sget v3, Lcom/facebook/orca/R$string;->sms_tab:I

    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-virtual {v0, v2, v3, v8}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 134
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    new-instance v2, Lcom/facebook/orca/creation/StartThreadActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/StartThreadActivity$1;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 143
    new-instance v0, Lcom/facebook/orca/creation/StartThreadActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/StartThreadActivity$2;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 154
    new-instance v0, Lcom/facebook/orca/creation/StartThreadActivity$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/StartThreadActivity$3;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    .line 161
    const-class v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c()V

    .line 164
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->g()V

    .line 166
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:I

    if-gt v0, v6, :cond_2

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->j:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    check-cast v0, Landroid/view/View;

    .line 170
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b_(I)V
    .locals 2
    .parameter

    .prologue
    .line 276
    sget v0, Lcom/facebook/orca/R$id;->chat_go_offline_menu_item:I

    if-ne p1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a(Z)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    sget v0, Lcom/facebook/orca/R$id;->chat_go_online_menu_item:I

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->i:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a(Z)V

    goto :goto_0
.end method

.method protected final d(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->d(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "start_thread"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 228
    const-string v0, "pickedUser"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 229
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 232
    :cond_0
    return-void
.end method
