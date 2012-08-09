.class public Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;
.super Ljava/lang/Object;
.source "IsClientSmsEnabledProvider.java"

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

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/IsClientSmsPermitted;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;->b:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
