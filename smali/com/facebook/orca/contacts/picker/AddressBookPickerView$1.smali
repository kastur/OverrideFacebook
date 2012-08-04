.class Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;
.super Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;
.source "AddressBookPickerView.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;->a:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 73
    return-void
.end method
