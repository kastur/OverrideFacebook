.class Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/BackgroundRefreshRunner;",
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
    .line 1920
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1920
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 10

    .prologue
    .line 1924
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v4, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbCache;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v7, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v7, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/common/util/Clock;

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-virtual {p0, v8, v9}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/server/BackgroundRefreshRunner;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/common/util/Clock;Z)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1920
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b()Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    return-object v0
.end method
