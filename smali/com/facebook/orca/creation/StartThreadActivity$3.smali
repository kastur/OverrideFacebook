.class Lcom/facebook/orca/creation/StartThreadActivity$3;
.super Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;
.source "StartThreadActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/creation/StartThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/orca/creation/StartThreadActivity$3;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity$3;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/creation/StartThreadActivity;Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 158
    return-void
.end method
