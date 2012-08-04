.class Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;
.super Ljava/lang/Object;
.source "ContactPickerFacebookFilter.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method public final a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-static {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V

    .line 88
    return-void
.end method
