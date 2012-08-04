.class public Lcom/facebook/katana/service/vault/VaultService;
.super Landroid/app/Service;
.source "VaultService.java"


# instance fields
.field private a:Landroid/os/Looper;

.field private b:Landroid/os/Handler;

.field private c:Lcom/facebook/katana/util/logging/VaultLogger;

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Lcom/facebook/katana/service/vault/VaultService;->e:I

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/katana/service/vault/VaultService;->d:Z

    .line 178
    const-string v1, "starting sync (start_id: %d) -- runnablePending reset)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-direct {p0, v0}, Lcom/facebook/katana/service/vault/VaultService;->d(I)V

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/service/vault/VaultService$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/service/vault/VaultService$1;-><init>(Lcom/facebook/katana/service/vault/VaultService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/service/vault/VaultService;->d:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "sync already queued, updating start_id: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 131
    iput p1, p0, Lcom/facebook/katana/service/vault/VaultService;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    const-string v0, "reason"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultService;->c:Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->a(I)V

    .line 138
    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "sync attempt (reason: %d, id: %d) not queued because sync is off"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/service/vault/VaultService$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/vault/VaultService$3;-><init>(Lcom/facebook/katana/service/vault/VaultService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    const-string v0, "scheduling run (start_id:%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/vault/VaultService;->d:Z

    .line 151
    iput p1, p0, Lcom/facebook/katana/service/vault/VaultService;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/vault/VaultService;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/vault/VaultService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->c(I)V

    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 4
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/service/vault/VaultService$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/service/vault/VaultService$2;-><init>(Lcom/facebook/katana/service/vault/VaultService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    const-string v0, "scheduling device update (start_id:%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(I)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 160
    :try_start_0
    const-string v0, "vault:device_oid"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->stopSelfResult(I)Z

    .line 169
    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->stopSelfResult(I)Z

    throw v0
.end method

.method private d(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/32 v7, 0xea60

    .line 188
    :try_start_0
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a(Z)Z

    move-result v0

    .line 192
    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->stopSelfResult(I)Z

    .line 234
    :goto_0
    return-void

    .line 196
    :cond_0
    if-eqz v0, :cond_1

    .line 197
    :try_start_1
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultNewImageUploader;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultNewImageUploader;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultNewImageUploader;->a()Z

    move-result v0

    .line 201
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    const-string v2, "vault_sync_interval"

    const-wide/32 v3, 0xea60

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 204
    if-nez v0, :cond_3

    .line 205
    const-string v0, "sync run (start_id: %d) failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;)V

    .line 208
    const-string v0, "retrying sync in %d seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    const-string v6, "reason"

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 215
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 216
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 219
    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 221
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vault_sync_interval"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->stopSelfResult(I)Z

    goto/16 :goto_0

    .line 223
    :cond_3
    :try_start_2
    const-string v0, "sync run (start_id: %d) completed succesfully!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 224
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 226
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vault_sync_interval"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    const-string v0, "resetting PREF_VAULT_RETRY_INTERVAL"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/VaultService;->stopSelfResult(I)Z

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    const-string v0, "creating VaultService -- waiting for Orca init"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vault_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->a:Landroid/os/Looper;

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultService;->a:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->b:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/facebook/katana/util/logging/VaultLogger;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/VaultLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->c:Lcom/facebook/katana/util/logging/VaultLogger;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    const-string v0, "destroy VaultService"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 81
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "job"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 100
    invoke-direct {p0, p3, p1}, Lcom/facebook/katana/service/vault/VaultService;->a(ILandroid/content/Intent;)V

    .line 102
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 92
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/facebook/katana/service/vault/VaultService;->b(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/facebook/katana/service/vault/VaultService;->a(I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
