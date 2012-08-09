.class public Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;
.super Ljava/lang/Object;
.source "ThreadNotificationPrefsSynchronizer.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:J


# instance fields
.field private final e:Landroid/os/Handler;

.field private final f:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final h:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private final i:Lcom/facebook/orca/cache/DataCache;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/ModifyThreadParams;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:Lcom/facebook/orca/server/ModifyThreadParams;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "orca:ThreadNotificationPrefsSynchronizer"

    sput-object v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b:J

    .line 40
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->c:J

    .line 41
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/cache/DataCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 65
    iput-object p2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 66
    iput-object p3, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/cache/DataCache;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->e:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$1;-><init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    new-instance v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;-><init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V

    invoke-virtual {p2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 92
    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->n:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->M:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->M:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    aget-object v0, v0, v3

    .line 107
    const-string v2, "muted_until2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 114
    invoke-static {v1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b()Ljava/util/Map;

    move-result-object v2

    .line 119
    new-instance v3, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->c(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 124
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->f()V

    return-void
.end method

.method private b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/ModifyThreadParams;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    .line 135
    sget-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    .line 136
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->c()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->e:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$3;-><init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V

    iget-wide v2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    .line 229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string v2, "modifyThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "modify_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 2

    .prologue
    .line 235
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    .line 236
    sget-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->m:I

    .line 240
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 6

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    .line 252
    iget v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->m:I

    int-to-long v0, v0

    sget-wide v2, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 253
    iget v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->m:I

    .line 254
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    .line 255
    sget-object v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update thread notification settings. Retrying in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->m:I

    .line 261
    sget-wide v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->l:J

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    .line 263
    sget-object v0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a:Ljava/lang/String;

    const-string v1, "Failed to update thread notification settings. Giving up."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/util/List;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->n:Z

    .line 160
    const/4 v1, 0x0

    .line 161
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 163
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->h()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_0

    .line 174
    invoke-static {v4}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v6

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 181
    invoke-virtual {v5}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-eqz v0, :cond_6

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 190
    :cond_2
    if-nez v1, :cond_5

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 193
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    :goto_2
    move-object v1, v0

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-eqz v1, :cond_4

    .line 199
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :cond_4
    iput-boolean v11, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->n:Z

    .line 203
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :catchall_1
    move-exception v0

    iput-boolean v11, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->n:Z

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
