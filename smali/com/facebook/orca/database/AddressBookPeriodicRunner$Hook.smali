.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;
.source "AddressBookPeriodicRunner.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-direct {p0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 221
    return-void
.end method
