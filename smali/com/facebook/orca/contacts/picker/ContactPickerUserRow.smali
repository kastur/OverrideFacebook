.class Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
.super Ljava/lang/Object;
.source "ContactPickerUserRow.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/users/UserWithIdentifier;

.field private final b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    .line 31
    iput-boolean p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/UserWithIdentifier;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
