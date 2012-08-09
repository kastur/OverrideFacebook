.class Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;
.super Ljava/lang/Object;
.source "ContactPickerFacebookFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-static {v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
