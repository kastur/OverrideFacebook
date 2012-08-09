.class Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter$1;
.super Ljava/lang/Object;
.source "ContactPickerFriendFilter.java"

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


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->t()F

    move-result v0

    .line 99
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()F

    move-result v1

    .line 100
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 101
    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    .line 102
    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    check-cast p1, Lcom/facebook/orca/users/User;

    check-cast p2, Lcom/facebook/orca/users/User;

    invoke-static {p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter$1;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)I

    move-result v0

    return v0
.end method
