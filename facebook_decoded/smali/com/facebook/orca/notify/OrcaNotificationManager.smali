.class public Lcom/facebook/orca/notify/OrcaNotificationManager;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private final d:Lcom/facebook/orca/presence/PresenceManager;

.field private final e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

.field private final f:Lcom/facebook/orca/notify/InAppNotificationController;

.field private final g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final h:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

.field private final l:Lcom/facebook/orca/inject/ContextScope;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private volatile n:J

.field private volatile o:Lcom/facebook/orca/threads/FolderCounts;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-wide/16 v0, 0x2

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/notify/MessagingNotificationRenderer;Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Ljava/lang/String;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/facebook/orca/inject/ContextScope;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    .line 78
    invoke-interface {p6}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 79
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 81
    iput-object p3, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/presence/PresenceManager;

    .line 82
    iput-object p4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    .line 83
    iput-object p5, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/notify/InAppNotificationController;

    .line 84
    iput-object p6, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 85
    iput-object p7, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    .line 87
    iput-object p8, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 89
    iput-object p10, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->l:Lcom/facebook/orca/inject/ContextScope;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Z
    .locals 3
    .parameter

    .prologue
    .line 226
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 233
    const-string v0, "orca:OrcaNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking other FB apps to see if thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is in FG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_0
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 237
    const-string v0, "userId"

    invoke-virtual {v3, v0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "threadId"

    invoke-virtual {v3, v0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    .line 248
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 254
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 265
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v0, v6

    .line 250
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :catch_0
    move-exception v0

    const-string v0, "orca:OrcaNotificationManager"

    const-string v1, "Caught security exception checking orca pref"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :catch_1
    move-exception v0

    .line 264
    const-string v1, "orca:OrcaNotificationManager"

    const-string v2, "Caught exception checking orca pref"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->l:Lcom/facebook/orca/inject/ContextScope;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    .line 280
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 282
    monitor-exit v1

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 286
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 288
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 270
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 271
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "logged_out_user"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "notifications_disabled"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    const-string v0, "notifications_disabled_thread"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const-string v0, "has_recent_message"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 164
    const-string v0, "orca:OrcaNotificationManager"

    const-string v1, "Ignoring message that was already processed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "thread_in_fg_elsewhere"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 174
    const-string v0, "orca:OrcaNotificationManager"

    const-string v1, "Thread is in FG elsewhere, eating notification"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    const/4 v1, 0x0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->n:J

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/threads/Message;)V

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->c()J

    move-result-wide v0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 189
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 193
    :goto_1
    const-string v1, "orca:OrcaNotificationManager"

    const-string v2, "Alerting user (in app)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z

    move-result v1

    .line 210
    :cond_5
    :goto_2
    if-eqz v1, :cond_9

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user_alerted_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/threads/Message;)V

    .line 216
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b()V

    goto/16 :goto_0

    .line 191
    :cond_6
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    goto :goto_1

    .line 196
    :cond_7
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 198
    sget-object v2, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    if-eq p3, v2, :cond_8

    sget-object v2, Lcom/facebook/orca/push/PushSource;->SMS:Lcom/facebook/orca/push/PushSource;

    if-eq p3, v2, :cond_8

    sget-object v2, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    if-ne p3, v2, :cond_5

    .line 203
    :cond_8
    const-string v1, "orca:OrcaNotificationManager"

    const-string v2, "Alerting user (not in app)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    sget-object v2, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    invoke-interface {v1, p1, p2, v2}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z

    move-result v1

    goto :goto_2

    .line 218
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user_not_alerted_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/notify/MessagingNotificationRenderer;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->o:Lcom/facebook/orca/threads/FolderCounts;

    .line 322
    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-wide v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->n:J

    sget-wide v2, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:J

    add-long/2addr v0, v2

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    new-instance v5, Lcom/facebook/orca/notify/OrcaNotificationManager$4;

    invoke-direct {v5, p0}, Lcom/facebook/orca/notify/OrcaNotificationManager$4;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/notify/OrcaNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a()V

    .line 360
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->o:Lcom/facebook/orca/threads/FolderCounts;

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/OrcaNotificationManager$3;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$2;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager$1;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v0, p1}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->b(Ljava/lang/String;)V

    .line 353
    return-void
.end method
