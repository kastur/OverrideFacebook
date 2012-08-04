.class public Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;
.super Ljava/lang/Object;
.source "UniqueIdForDeviceGenerator.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 35
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->Q:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->Q:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 55
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->c()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/SecureHashUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
