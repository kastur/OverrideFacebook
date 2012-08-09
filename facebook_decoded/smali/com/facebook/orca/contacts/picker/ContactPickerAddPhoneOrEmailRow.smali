.class Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;
.super Ljava/lang/Object;
.source "ContactPickerAddPhoneOrEmailRow.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-object v0
.end method
