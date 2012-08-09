.class public Lcom/facebook/orca/config/OrcaDynamicConfig;
.super Lcom/facebook/orca/config/AbstractOrcaConfig;
.source "OrcaDynamicConfig.java"


# instance fields
.field private final a:Lcom/facebook/orca/config/OrcaProductionConfig;

.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Lcom/facebook/orca/config/MqttConfig;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/facebook/orca/config/OrcaDynamicConfig;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->E:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->g:Z

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->H:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->F:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "intern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    new-instance v0, Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    const-string v1, "intern.facebook.com"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 121
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->a:Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaProductionConfig;->g()Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->g:Z

    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    new-instance v0, Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    const-string v1, "dev.facebook.com"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    goto :goto_1

    .line 108
    :cond_4
    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->G:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_2
    new-instance v1, Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    invoke-direct {v1, v0, v4}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    const-string v2, "orca:OrcaDynamicConfig"

    const-string v3, "Failed to parse web sandbox URL"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private h()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->I:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->J:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    :try_start_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 141
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    new-instance v2, Lcom/facebook/orca/config/MqttConfig;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->a:Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaProductionConfig;->e()Lcom/facebook/orca/config/MqttConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;

    goto :goto_0

    .line 144
    :cond_3
    :try_start_1
    new-instance v1, Lcom/facebook/orca/config/MqttConfig;

    const/16 v2, 0x22b3

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "orca:OrcaDynamicConfig"

    const-string v2, "Failed to parse mqtt sandbox URL"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->g()V

    .line 82
    iget-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/facebook/orca/config/OrcaHttpConfig;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->g()V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Lcom/facebook/orca/config/OrcaStandardHttpConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->h()V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/config/MqttConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
