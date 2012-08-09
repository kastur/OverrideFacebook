.class public Lcom/facebook/orca/threadlist/VersionUpgradePromoView;
.super Lcom/facebook/orca/activity/CustomView;
.source "VersionUpgradePromoView.java"


# instance fields
.field private a:Lcom/facebook/orca/config/OrcaConfig;

.field private b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private c:Lcom/facebook/orca/common/util/VersionStringComparator;

.field private d:Lcom/facebook/orca/app/OrcaAppType;

.field private e:Lcom/facebook/orca/appconfig/AppConfig;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->b()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->b()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->b()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/VersionUpgradePromoView;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 56
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->a:Lcom/facebook/orca/config/OrcaConfig;

    .line 57
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 58
    const-class v0, Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/VersionStringComparator;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->c:Lcom/facebook/orca/common/util/VersionStringComparator;

    .line 59
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->d:Lcom/facebook/orca/app/OrcaAppType;

    .line 61
    sget v0, Lcom/facebook/orca/R$layout;->orca_version_upgrade_promo:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->a(I)V

    .line 63
    sget v0, Lcom/facebook/orca/R$id;->version_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->findViewById(I)Landroid/view/View;

    .line 64
    sget v0, Lcom/facebook/orca/R$id;->version_get_it_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->f:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->f:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadlist/VersionUpgradePromoView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView$1;-><init>(Lcom/facebook/orca/threadlist/VersionUpgradePromoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->d:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->g()Lcom/facebook/orca/app/OrcaAppType$Product;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    if-eq v0, v1, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p0, v4}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setVisibility(I)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->K:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/appconfig/AppConfig;->b()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->c:Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 107
    invoke-virtual {p0, v3}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->e()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v1}, Lcom/facebook/orca/config/OrcaConfig;->f()I

    move-result v1

    .line 113
    if-ge v1, v0, :cond_4

    .line 114
    invoke-virtual {p0, v3}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p0, v4}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->d:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public setAppConfig(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    if-eq v0, p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->e:Lcom/facebook/orca/appconfig/AppConfig;

    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->c()V

    .line 87
    :cond_0
    return-void
.end method
