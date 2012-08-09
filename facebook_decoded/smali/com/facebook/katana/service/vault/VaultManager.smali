.class public Lcom/facebook/katana/service/vault/VaultManager;
.super Ljava/lang/Object;
.source "VaultManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private d:Lcom/facebook/katana/binding/AppSessionListener;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->b:Z

    .line 43
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 170
    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    const-string v1, "vault"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 175
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "vault gk is off or there is no session, no syncing for you"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    move v0, v1

    .line 236
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 211
    const-string v0, "not running VaultServices because battery is low"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    const-string v0, "background data is off, cannot run Vault Services"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;)V

    move v0, v1

    .line 224
    goto :goto_0

    .line 227
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "vault_sync_mode"

    const-string v3, "OFF"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v2, "WIFI_ONLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    invoke-static {p0}, Lcom/facebook/katana/binding/UploadManagerConnectivity;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 233
    :cond_3
    const-string v2, "MOBILE_RADIO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-static {p0}, Lcom/facebook/katana/binding/UploadManagerConnectivity;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-static {p0}, Lcom/facebook/katana/binding/UploadManagerConnectivity;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 193
    const-string v3, "scale"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 194
    if-ltz v2, :cond_0

    if-lez v1, :cond_0

    .line 195
    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v1

    .line 198
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    iget-boolean v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->b:Z

    if-nez v0, :cond_0

    .line 52
    const-string v0, "initing VaultManager"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 55
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/facebook/katana/service/vault/VaultManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/vault/VaultManager$1;-><init>(Lcom/facebook/katana/service/vault/VaultManager;)V

    iput-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 72
    new-instance v1, Lcom/facebook/katana/service/vault/VaultManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/vault/VaultManager$2;-><init>(Lcom/facebook/katana/service/vault/VaultManager;)V

    iput-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->e:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    const-string v3, "adding gk session listener!"

    invoke-static {v3}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 91
    new-instance v3, Lcom/facebook/katana/service/vault/VaultManager$3;

    invoke-direct {v3, p0}, Lcom/facebook/katana/service/vault/VaultManager$3;-><init>(Lcom/facebook/katana/service/vault/VaultManager;)V

    iput-object v3, p0, Lcom/facebook/katana/service/vault/VaultManager;->d:Lcom/facebook/katana/binding/AppSessionListener;

    .line 118
    iget-object v3, p0, Lcom/facebook/katana/service/vault/VaultManager;->d:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iput-boolean v4, p0, Lcom/facebook/katana/service/vault/VaultManager;->b:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/VaultManager;->b()V

    .line 133
    :cond_1
    return-void

    .line 120
    :cond_2
    const-string v2, "Vault manager encountered invalid session"

    const-string v3, "there should always be a session at this point"

    invoke-static {v2, v3, v4}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/katana/service/vault/VaultObserverService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultManager;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 159
    const-string v0, "Stopping Observer and also trying to halt VaultService"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    const-class v3, Lcom/facebook/katana/service/vault/VaultObserverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager;->a:Landroid/content/Context;

    const-class v3, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 165
    return-void
.end method
