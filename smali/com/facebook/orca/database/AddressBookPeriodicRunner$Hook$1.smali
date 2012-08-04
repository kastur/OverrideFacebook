.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    iget-object v0, v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V

    .line 218
    return-void
.end method
