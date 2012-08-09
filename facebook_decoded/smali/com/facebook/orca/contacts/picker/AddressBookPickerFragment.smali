.class public Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddressBookPickerFragment.java"


# instance fields
.field private J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

.field private K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private L:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    .line 25
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 26
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->L:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->L:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 32
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->J:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method
