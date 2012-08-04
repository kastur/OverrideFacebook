.class Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/c2dm/C2DMRegistrar;",
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
    .line 1809
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1809
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/c2dm/C2DMRegistrar;
    .locals 4

    .prologue
    .line 1813
    new-instance v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;-><init>(Landroid/content/Context;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1809
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;->b()Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    move-result-object v0

    return-object v0
.end method
