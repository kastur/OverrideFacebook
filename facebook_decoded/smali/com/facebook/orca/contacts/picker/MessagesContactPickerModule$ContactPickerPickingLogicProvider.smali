.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerPickingLogicProvider;->b()Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    move-result-object v0

    return-object v0
.end method
