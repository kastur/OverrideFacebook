.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;
    .locals 3

    .prologue
    .line 97
    new-instance v2, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;-><init>(Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerIdentityChooserActivityMyAdapterProvider;->b()Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    move-result-object v0

    return-object v0
.end method
