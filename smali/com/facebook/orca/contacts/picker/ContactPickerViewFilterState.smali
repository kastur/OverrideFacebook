.class public final enum Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;
.super Ljava/lang/Enum;
.source "ContactPickerViewFilterState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

.field public static final enum FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

.field public static final enum FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

.field public static final enum NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

.field public static final enum UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 13
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    const-string v1, "UNFILTERED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 16
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    const-string v1, "FILTERING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 19
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    const-string v1, "FILTERED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    return-object v0
.end method
