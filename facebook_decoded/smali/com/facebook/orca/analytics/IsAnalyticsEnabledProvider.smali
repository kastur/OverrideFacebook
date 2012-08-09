.class public Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;
.super Ljava/lang/Object;
.source "IsAnalyticsEnabledProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/orca/common/util/TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "messenger_client_analytics_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/MeUser;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->b:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 32
    return-void
.end method

.method private b()Lcom/facebook/orca/common/util/TriState;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 43
    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;->b()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
