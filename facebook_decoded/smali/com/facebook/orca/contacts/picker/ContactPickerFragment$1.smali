.class Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-static {v0, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;I)V

    .line 112
    return-void
.end method
