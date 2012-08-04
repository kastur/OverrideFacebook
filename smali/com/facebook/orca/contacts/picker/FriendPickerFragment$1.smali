.class Lcom/facebook/orca/contacts/picker/FriendPickerFragment$1;
.super Lcom/facebook/orca/activity/SafeBroadcastReceiver;
.source "FriendPickerFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/FriendPickerFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendPickerFragment$1;->a:Lcom/facebook/orca/contacts/picker/FriendPickerFragment;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/FriendPickerFragment;->a(Lcom/facebook/orca/contacts/picker/FriendPickerFragment;)Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a()V

    .line 55
    return-void
.end method
