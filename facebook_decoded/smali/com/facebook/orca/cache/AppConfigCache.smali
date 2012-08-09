.class public Lcom/facebook/orca/cache/AppConfigCache;
.super Ljava/lang/Object;
.source "AppConfigCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

.field private volatile c:Lcom/facebook/orca/appconfig/AppConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/cache/AppConfigCache;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 26
    iput-object p2, p0, Lcom/facebook/orca/cache/AppConfigCache;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 27
    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/orca/appconfig/AppConfig;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    if-eqz v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/AppConfigCache;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/cache/AppConfigCache;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/cache/AppConfigCache;->c:Lcom/facebook/orca/appconfig/AppConfig;

    .line 46
    return-void
.end method
