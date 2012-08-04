.class public Lcom/facebook/katana/orca/FbAnalyticsConfig;
.super Ljava/lang/Object;
.source "FbAnalyticsConfig.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsConfig;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/facebook/katana/orca/FbAnalyticsConfig;->a:Ljavax/inject/Provider;

    .line 19
    iput-object p1, p0, Lcom/facebook/katana/orca/FbAnalyticsConfig;->b:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAnalyticsConfig;->b:Landroid/content/Context;

    const-string v1, "fbandroid_detailed_analytics"

    invoke-static {v0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private c()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAnalyticsConfig;->b:Landroid/content/Context;

    const-string v1, "fbandroid_analytics"

    invoke-static {v0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAnalyticsConfig;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 56
    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->UNSET:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    .line 70
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/katana/orca/FbAnalyticsConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbAnalyticsConfig;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0
.end method
