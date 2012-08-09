.class public Lcom/facebook/katana/service/vault/VaultDeviceSetup;
.super Ljava/lang/Object;
.source "VaultDeviceSetup.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/katana/service/vault/VaultImageFetcher;

.field private final d:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private final e:Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

.field private final f:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

.field private final g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/service/vault/VaultImageFetcher;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->c:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    .line 57
    iput-object p3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->d:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 58
    iput-object p4, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->e:Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

    .line 59
    iput-object p5, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->f:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    .line 60
    iput-object p6, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    .line 61
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    const-string v1, "vault:device_oid"

    iget-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    const-string v1, "vault:last_synced_date"

    iget-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v0, "stored device info -- device_id: %d, sync_date: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private b(Z)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    if-eqz p1, :cond_1

    .line 128
    const-string v0, "fetching VaultDevice and updating device to match local prefs"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v3, "vault_sync_mode"

    const-string v4, "OFF"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/facebook/katana/model/FacebookVaultDevice;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;

    invoke-direct {v0, v2, v3}, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;-><init>(ZLjava/lang/String;)V

    .line 145
    :goto_0
    const/4 v3, 0x0

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->d:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v5, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->e:Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

    invoke-virtual {v4, v5, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookVaultDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    if-eqz v0, :cond_5

    .line 154
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mFbid:J

    iput-wide v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    .line 155
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mLastSyncTime:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    .line 157
    if-nez p1, :cond_4

    .line 159
    iget-object v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 162
    iget-boolean v4, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mEnabled:Z

    if-nez v4, :cond_2

    .line 163
    const-string v0, "setting device off"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 164
    const-string v0, "vault_sync_mode"

    const-string v1, "OFF"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    move v0, v2

    .line 190
    :goto_4
    return v0

    .line 137
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;

    const-string v3, "WIFI_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "fetching VaultDevice but not changing device state on server"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;

    invoke-direct {v0}, Lcom/facebook/katana/service/vault/methods/VaultDevicePostParams;-><init>()V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    sget-object v4, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const-string v4, "vault_device_post_api exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 167
    :cond_2
    iget-object v4, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/katana/model/FacebookVaultDevice;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid sync mode for device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;)V

    .line 169
    const-string v2, "vault_device_setup bad sync mode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid sync mode for device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 171
    goto :goto_4

    .line 173
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setting device enabled, sync_mode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 174
    const-string v1, "vault_sync_mode"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->b()V

    goto/16 :goto_2

    .line 182
    :cond_4
    const-string v3, "device setup, sync_mode unchanged. enabled: %b, sync_mode: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookVaultDevice;->mSyncMode:Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    :cond_5
    const-string v0, "device setup failed!"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    move v0, v1

    .line 188
    goto/16 :goto_4
.end method

.method private c()Z
    .locals 15

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->d()V

    .line 211
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->c:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/service/vault/VaultImageFetcher;->a(J)Ljava/util/Map;

    move-result-object v6

    .line 212
    const-string v0, "checking sync state of %d local images"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;

    iget-wide v1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;-><init>(JLjava/util/Collection;J)V

    .line 218
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->d:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->g:Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;

    .line 222
    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;->b()Ljava/util/Map;

    move-result-object v12

    .line 223
    const-string v0, "Found %d images that were already synced"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v0, 0x0

    .line 231
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v13

    .line 232
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    invoke-static {v1}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_4

    .line 235
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 236
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;

    .line 239
    const-wide/16 v6, 0x0

    .line 240
    if-eqz v0, :cond_1

    .line 244
    iget-boolean v3, v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mDeleted:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    .line 246
    :goto_1
    iget-wide v6, v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mFbid:J

    move v9, v3

    move v11, v2

    move-wide v2, v6

    .line 255
    :goto_2
    new-instance v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/provider/VaultImageProviderRow;-><init>(Ljava/lang/String;JJJIII)V

    .line 258
    const-string v1, "restoring vault table row: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->c()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v11

    :goto_3
    move v2, v0

    .line 261
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    const-string v1, "vault_local_image_status_api exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    .line 271
    :goto_4
    return v0

    .line 244
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 249
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 250
    const/16 v0, 0x14

    if-le v2, v0, :cond_2

    const/4 v0, 0x5

    :goto_5
    move v9, v0

    move v11, v2

    move-wide v2, v6

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    goto :goto_5

    .line 263
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 264
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    .line 267
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->c:Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultImageFetcher;->a()I

    move-result v6

    .line 268
    const-string v0, "library size: %d, restored rows: %d."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/facebook/katana/util/logging/VaultLogger;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/logging/VaultLogger;-><init>(Landroid/content/Context;)V

    iget-wide v1, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    iget-wide v3, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/util/logging/VaultLogger;->a(JJII)V

    .line 271
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private d()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/VaultImageProvider;->b:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 278
    const-string v1, "clearing vault table, removed %d rows."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;)V

    .line 279
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    const-string v2, "vault:device_oid"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    const-string v4, "vault_sync_mode"

    const-string v5, "OFF"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v0, "OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 109
    :goto_0
    new-instance v5, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;

    invoke-direct {v5, v2, v3}, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;-><init>(J)V

    .line 110
    invoke-virtual {v5, v0}, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->a(Z)V

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v5, v4}, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateParams;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->d:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->f:Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    invoke-virtual {v0, v2, v5}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 107
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v2, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const-string v2, "vault_device_update_api exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 68
    sget-object v2, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->a:Ljava/lang/String;

    const-string v3, "setting up device if needed"

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    const-string v3, "vault:device_oid"

    invoke-static {v2, v3, v6, v7}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    .line 73
    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b:Landroid/content/Context;

    const-string v3, "vault:last_synced_date"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    .line 79
    iget-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    :cond_1
    :goto_0
    return v0

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->b()V

    :goto_1
    move v0, v1

    .line 94
    goto :goto_0

    .line 91
    :cond_3
    const-string v2, "device info already set, device_id: %d, sync_date: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    iget-wide v4, p0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
