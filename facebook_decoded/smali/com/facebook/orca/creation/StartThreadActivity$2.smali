.class Lcom/facebook/orca/creation/StartThreadActivity$2;
.super Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;
.source "StartThreadActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/creation/StartThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/creation/StartThreadActivity$2;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity$2;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0}, Lcom/facebook/orca/creation/StartThreadActivity;->b(Lcom/facebook/orca/creation/StartThreadActivity;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/facebook/orca/users/UserWithIdentifier;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity$2;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/creation/StartThreadActivity;Lcom/facebook/orca/users/UserWithIdentifier;)V

    .line 147
    return-void
.end method
