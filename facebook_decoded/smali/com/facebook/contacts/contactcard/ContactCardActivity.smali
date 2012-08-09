.class public Lcom/facebook/contacts/contactcard/ContactCardActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ContactCardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 17
    sget v0, Lcom/facebook/orca/R$layout;->contacts_card:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardActivity;->setContentView(I)V

    .line 18
    return-void
.end method
