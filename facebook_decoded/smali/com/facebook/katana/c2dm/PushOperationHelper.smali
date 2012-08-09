.class public Lcom/facebook/katana/c2dm/PushOperationHelper;
.super Ljava/lang/Object;
.source "PushOperationHelper.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Ljava/lang/String;

.field private static d:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private static synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    const-class v0, Lcom/facebook/katana/c2dm/PushOperationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->e:Z

    .line 49
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->a:J

    .line 50
    const-wide/16 v0, 0xc

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->b:J

    .line 52
    sput-object v4, Lcom/facebook/katana/c2dm/PushOperationHelper;->c:Ljava/lang/String;

    .line 54
    sput-object v4, Lcom/facebook/katana/c2dm/PushOperationHelper;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-static {p0, v4}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    const-string v0, "attempt"

    .line 99
    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/reliability/PushServerUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 106
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->b(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    const-string v0, "attempt"

    .line 119
    :goto_1
    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/reliability/PushC2DMUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 124
    return-void

    .line 97
    :cond_0
    const-string v0, "not_supported"

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "not_supported"

    goto :goto_1
.end method

.method static a(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string v1, "c2dm_last_push_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->e(Landroid/content/Context;)J

    move-result-wide v0

    .line 237
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 244
    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/c2dm/PushOperationHelper;->b(Landroid/content/Context;J)V

    .line 245
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    sget-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    if-nez v0, :cond_0

    .line 280
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    sput-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 282
    :cond_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 283
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->b(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 75
    const-string v1, "old_reg_id"

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "attempt"

    const-string v2, ""

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/logging/reliability/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 82
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    const-string v1, "c2dm_registration_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v1, "c2dm_last_registration_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 128
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    const-string v1, "c2dm_registration_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v1, "c2dm_last_registration_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v1, "c2dm_last_fb_registration_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v1, "cd2m_backoff"

    sget-wide v2, Lcom/facebook/katana/c2dm/PushOperationHelper;->a:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string v1, "cd2m_backoff"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    const-string v1, "c2dm_last_fb_registration_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 168
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    const-string v1, "c2dm_registration_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 175
    const-string v0, "com.google.android.c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    const-string v1, "cd2m_backoff"

    sget-wide v2, Lcom/facebook/katana/c2dm/PushOperationHelper;->a:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    sget-wide v2, Lcom/facebook/katana/c2dm/PushOperationHelper;->a:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 179
    sget-wide v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->a:J

    .line 183
    :cond_0
    :goto_0
    return-wide v0

    .line 180
    :cond_1
    sget-wide v2, Lcom/facebook/katana/c2dm/PushOperationHelper;->b:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 181
    sget-wide v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->b:J

    goto :goto_0
.end method

.method static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 257
    const-class v1, Lcom/facebook/katana/c2dm/PushOperationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 258
    const-string v0, "com.google.android.c2dm"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 260
    const-string v0, "cd2m_device_id"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    const-string v3, "cd2m_device_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    const-string v0, "cd2m_device_id"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_0
    sput-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->c:Ljava/lang/String;

    .line 273
    :cond_1
    sget-object v0, Lcom/facebook/katana/c2dm/PushOperationHelper;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static g(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->i(Landroid/content/Context;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    move-result-object v0

    .line 289
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 294
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_1

    .line 295
    const-string v0, "facebook.android@gmail.com"

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 299
    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    goto :goto_0
.end method

.method static h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-string v0, "backoff"

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->e(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
    .locals 13
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 215
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const-string v2, "com.google.android.c2dm"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 204
    const-string v3, "c2dm_last_registration_time"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 205
    const-string v5, "c2dm_last_push_time"

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 212
    sub-long v2, v7, v3

    sget-wide v9, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    const-wide/16 v11, 0x7

    mul-long/2addr v9, v11

    cmp-long v2, v2, v9

    if-lez v2, :cond_1

    sub-long v2, v7, v5

    sget-wide v4, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    shl-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 215
    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 212
    goto :goto_1

    .line 215
    :cond_2
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 223
    sget-boolean v2, Lcom/facebook/katana/c2dm/PushOperationHelper;->e:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_0
    const-string v1, "com.google.android.c2dm"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    const-string v2, "c2dm_last_fb_registration_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 229
    sub-long v1, v3, v1

    sget-wide v3, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
