.class Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/AddressBookPeriodicRunner;
    .locals 8

    .prologue
    .line 1041
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v2}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const-class v3, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v4, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v5, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v6, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v6, Ljava/lang/Boolean;

    const-class v7, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;->b()Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    move-result-object v0

    return-object v0
.end method
