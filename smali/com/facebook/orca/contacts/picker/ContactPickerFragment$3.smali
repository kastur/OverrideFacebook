.class Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;
.super Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;
.source "ContactPickerFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field private synthetic b:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    if-ne p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-static {v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-static {v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
