.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "AddressBookPeriodicRunner.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    .line 81
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    .line 76
    return-void
.end method
