.class public Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;
.super Ljava/lang/Object;
.source "IsWirehogProfilingEnabledProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 22
    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->D:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
