.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-boolean p2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iget-boolean v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Z

    invoke-static {v0, v1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V

    .line 112
    return-void
.end method
