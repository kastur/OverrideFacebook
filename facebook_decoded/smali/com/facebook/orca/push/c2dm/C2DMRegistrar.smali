.class public Lcom/facebook/orca/push/c2dm/C2DMRegistrar;
.super Ljava/lang/Object;
.source "C2DMRegistrar.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final h:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    .line 44
    const-wide/16 v0, 0x2

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a:J

    .line 45
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->e:J

    sput-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:J

    .line 46
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    sput-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:J

    .line 48
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d:J

    .line 49
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 75
    iput-object p3, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 76
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 80
    const-string v1, "backoff"

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 219
    sget-wide v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 220
    sget-wide p1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:J

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 225
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 226
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/analytics/reliability/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 95
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v1, "app"

    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string v1, "sender"

    const-string v2, "facebook.android@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 120
    const-string v1, "orca:C2DMessaging"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startService="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/orca/analytics/reliability/PushC2DMUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 107
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v1, "app"

    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g()V

    .line 135
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 208
    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 209
    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 210
    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 211
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 212
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 141
    const-string v0, "invalid_token"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v2

    .line 145
    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g()V

    .line 149
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 192
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v6, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v2

    .line 187
    iget-object v4, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v5, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v4, v5, v6, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v4

    .line 188
    sub-long v2, v0, v2

    sget-wide v6, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    sub-long/2addr v0, v4

    sget-wide v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 190
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0
.end method

.method final g()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 201
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 202
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 203
    return-void
.end method

.method public final h()J
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    sget-wide v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method
