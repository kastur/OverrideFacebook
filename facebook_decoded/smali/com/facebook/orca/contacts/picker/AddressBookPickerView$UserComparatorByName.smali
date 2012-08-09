.class Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;
.super Ljava/lang/Object;
.source "AddressBookPickerView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;->a:Ljava/text/Collator;

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 197
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;->a:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 190
    check-cast p1, Lcom/facebook/orca/users/User;

    check-cast p2, Lcom/facebook/orca/users/User;

    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$UserComparatorByName;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)I

    move-result v0

    return v0
.end method
