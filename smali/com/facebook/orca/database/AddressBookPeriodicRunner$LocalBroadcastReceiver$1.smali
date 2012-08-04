.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;)Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e()V

    .line 242
    return-void
.end method
