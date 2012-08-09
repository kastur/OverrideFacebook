.class final enum Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;
.super Ljava/lang/Enum;
.source "ContactPickerAddContactDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

.field public static final enum CANCEL:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

.field public static final enum OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    .line 35
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->CANCEL:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->CANCEL:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    return-object v0
.end method
