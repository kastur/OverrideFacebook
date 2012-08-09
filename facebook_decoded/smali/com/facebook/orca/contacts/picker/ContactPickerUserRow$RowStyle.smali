.class final enum Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
.super Ljava/lang/Enum;
.source "ContactPickerUserRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

.field public static final enum ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

.field public static final enum TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    const-string v1, "ONE_LINE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    .line 18
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    const-string v1, "TWO_LINE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    return-object v0
.end method
