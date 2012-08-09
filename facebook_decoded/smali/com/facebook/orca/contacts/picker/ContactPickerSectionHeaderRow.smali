.class public Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;
.super Ljava/lang/Object;
.source "ContactPickerSectionHeaderRow.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;->a:Ljava/lang/String;

    return-object v0
.end method
