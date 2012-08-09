.class public Lcom/facebook/orca/contacts/picker/FriendPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "FriendPickerFragment.java"


# instance fields
.field private J:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

.field private L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

.field private M:Z

.field private N:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private O:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendPickerFragment;)Lcom/facebook/orca/contacts/picker/FriendListPickerView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    iget-boolean v1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->M:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setEnableNewGroupItem(Z)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->N:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->O:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->O:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->N:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->M:Z

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->K:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setEnableNewGroupItem(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 47
    const-class v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->J:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "com.facebook.orca.ACTION_FRIEND_SYNC_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendPickerFragment$1;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/FriendPickerFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a()V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->J:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b()V

    .line 63
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->L:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b()V

    .line 71
    :cond_0
    return-void
.end method
