.class public Lcom/facebook/katana/util/logging/MobileEventLogger;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"


# static fields
.field private static a:Lcom/facebook/katana/util/logging/MobileEventLogger;

.field private static final g:J

.field private static final h:J

.field private static final i:J

.field private static final j:J


# instance fields
.field private b:Ljava/lang/Long;

.field private c:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

.field private d:J

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Z

.field private n:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/katana/util/logging/MobileEvent;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;

    .line 96
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->g:J

    .line 97
    const-wide/16 v0, 0xc

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    .line 102
    const-wide/16 v0, 0x14

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->i:J

    .line 103
    const-wide/16 v0, 0x30

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->j:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->b:Ljava/lang/Long;

    .line 66
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;->a:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->d:J

    .line 68
    iput-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    .line 69
    iput-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->f:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->m:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->n:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 488
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/katana/util/logging/MobileEventLogger;
    .locals 2

    .prologue
    .line 492
    const-class v1, Lcom/facebook/katana/util/logging/MobileEventLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;

    .line 496
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/util/logging/MobileEventLogger;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    invoke-static {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    .line 503
    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 653
    const-string v1, "time < %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 655
    sget-object v2, Lcom/facebook/katana/provider/MobileEventLogProvider;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    .line 557
    iput-wide p2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->d:J

    .line 558
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 560
    const-string v1, "MOBILELOG_USER_SAMPLED"

    iget-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    const-string v1, "MOBILELOG_SAMPLING_INTERVAL_START"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v2, Lcom/facebook/katana/provider/MobileEventLogProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 358
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->p(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "INTERACTION_SESSION_ID"

    invoke-static {p0, v0, p1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v0, "INTERACTION_SESSION_START"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/katana/util/logging/MobileEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->n:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/util/logging/MobileEventLogger;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->u(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/util/logging/MobileEventLogger;Lorg/json/JSONException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lorg/json/JSONException;)V

    return-void
.end method

.method private static a(Lorg/json/JSONException;)V
    .locals 1
    .parameter

    .prologue
    .line 963
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 966
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 725
    :try_start_0
    const-string v2, "(%s >= %d AND %s <= %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p1, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 730
    iget-object v4, p1, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/facebook/katana/service/method/LogMobileEvent;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    sget-object v4, Lcom/facebook/katana/provider/MobileEventLogProvider;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return v0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    const-string v2, "action_logger_oom_send"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    .line 740
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 516
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->g(Landroid/content/Context;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->i:J

    return-wide v0
.end method

.method private b(Landroid/content/Context;J)J
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 750
    const/4 v6, 0x0

    .line 751
    new-instance v7, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;

    invoke-direct {v7, p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;-><init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V

    .line 756
    const/4 v3, 0x0

    .line 758
    const-wide/16 v0, -0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 759
    :try_start_0
    const-string v0, "time > %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 762
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 763
    sget-object v1, Lcom/facebook/katana/provider/MobileEventLogProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/util/logging/MobileEventLogger$LoggingQuery;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 767
    const-wide/16 v3, -0x1

    .line 768
    const-wide/16 v0, -0x1

    .line 773
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 774
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 776
    :cond_1
    invoke-virtual {v7, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a(Landroid/database/Cursor;)V

    .line 777
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 779
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    move-wide v3, v0

    .line 785
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a()J

    move-result-wide v5

    const-wide/32 v8, 0xc800

    cmp-long v5, v5, v8

    if-ltz v5, :cond_1

    .line 789
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-nez v5, :cond_6

    .line 791
    if-eqz v2, :cond_4

    .line 804
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 805
    :cond_4
    const-wide/16 v0, -0x1

    .line 812
    :cond_5
    :goto_0
    return-wide v0

    .line 794
    :cond_6
    :try_start_2
    iput-wide v3, v7, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->b:J

    .line 795
    iput-wide v0, v7, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->c:J

    .line 796
    invoke-virtual {v7, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a(Landroid/content/Context;)V

    .line 797
    iget-wide v0, v7, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 803
    if-eqz v2, :cond_7

    .line 804
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_7
    invoke-static {p1, v7}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 812
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 799
    :goto_1
    :try_start_3
    const-string v2, "action_logger_oom_prep"

    const-string v3, "logsize: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 801
    if-eqz v1, :cond_8

    .line 804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 805
    :cond_8
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_2
    if-eqz v2, :cond_9

    .line 804
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 805
    :cond_9
    throw v0

    .line 803
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 798
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/katana/util/logging/MobileEventLogger;)Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/content/Context;JZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->m:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    .line 624
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->o(Landroid/content/Context;)V

    .line 625
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 626
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/util/logging/MobileEventLogger$ScheduleReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 631
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_1
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/facebook/katana/util/logging/MobileEventLogger;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    .line 262
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {p1}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_0

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_0
    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->f:Ljava/lang/String;

    .line 412
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-virtual {p2}, Lcom/facebook/katana/util/logging/MobileEvent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/util/logging/MobileEventLogger;)J
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    return-wide v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private declared-synchronized d(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 833
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->g(Landroid/content/Context;)V

    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    .line 837
    new-instance v0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;

    iget-object v3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;-><init>(Lcom/facebook/katana/util/logging/MobileEventLogger;Landroid/app/Activity;Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_0
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 931
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->n:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v2, 0xa8c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/util/logging/MobileEvent;

    .line 932
    if-eqz v1, :cond_0

    .line 933
    instance-of v2, v1, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;

    if-eqz v2, :cond_1

    .line 934
    move-object v0, v1

    check-cast v0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;

    move-object v2, v0

    .line 935
    iget-object v3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->o:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->d()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 939
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/katana/util/logging/MobileEvent;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->o:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->o:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->c(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v1

    .line 946
    const-string v2, "runEventProcessingThread interrupted"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->s(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/util/logging/MobileEventLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->e()V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    const-string v0, "INTERACTION_SESSION_ID"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->k:Ljava/lang/String;

    .line 253
    const-string v0, "INTERACTION_SESSION_START"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    .line 256
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 508
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->b:Ljava/lang/Long;

    .line 509
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->b:Ljava/lang/Long;

    .line 512
    :cond_0
    return-void
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 524
    invoke-static {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->b()Z

    move-result v0

    return v0
.end method

.method private i(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private declared-synchronized j(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 536
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    const-string v1, "MOBILELOG_SAMPLING_INTERVAL_START"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->d:J

    .line 540
    :cond_0
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 546
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    const-string v1, "MOBILELOG_USER_SAMPLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->i(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    .line 593
    :goto_0
    monitor-exit p0

    return v0

    .line 571
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const/4 v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->j(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 579
    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->c()I

    move-result v2

    int-to-long v2, v2

    .line 581
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 588
    :cond_2
    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 590
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->m(Landroid/content/Context;)V

    .line 593
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->k(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 598
    monitor-enter p0

    const/4 v0, 0x0

    .line 599
    :try_start_0
    sget-object v1, Lcom/facebook/katana/util/Utils;->a:Ljava/util/Random;

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    move-result-object v2

    iget v2, v2, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->ratio:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 604
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 615
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :goto_0
    monitor-exit p0

    return-void

    .line 617
    :cond_0
    :try_start_1
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->g:J

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 638
    iput-boolean v3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->m:Z

    .line 639
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 640
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/util/logging/MobileEventLogger$ScheduleReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 643
    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 647
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;JZ)V

    .line 648
    return-void
.end method

.method private q(Landroid/content/Context;)J
    .locals 2
    .parameter

    .prologue
    .line 745
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private r(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->c()V

    .line 846
    return-void
.end method

.method private static s(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 881
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/BackgroundRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    const-string v1, "com.facebook.katana.service.BackgroundRequestService.operation"

    sget-object v2, Lcom/facebook/katana/service/BackgroundRequestService$Operation;->ACTIONS_LOG:Lcom/facebook/katana/service/BackgroundRequestService$Operation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 885
    return-void
.end method

.method private static t(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 898
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 901
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 907
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 910
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    new-instance v1, Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    iput-object v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;->a:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 375
    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->c(Landroid/app/Activity;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d(Landroid/app/Activity;)V

    .line 382
    new-instance v0, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v1, "OPEN_ACTIVITY"

    const-string v2, "ACTIVITY"

    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/katana/util/logging/MobileEvent;->a(Z)V

    .line 325
    invoke-direct {p0, p2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 396
    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v1, "PAUSE_ACTIVITY"

    const-string v2, "ACTIVITY"

    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    .line 682
    invoke-direct {p0, p1, v8}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->t(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 684
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->f(Landroid/content/Context;)V

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->l:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/katana/util/logging/MobileEventLogger;->j:J

    sget-wide v4, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 687
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    invoke-direct {p0, p1, v0, v1, v8}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;JZ)V

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 693
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a(Landroid/content/Context;J)V

    .line 694
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->u(Landroid/content/Context;)V

    .line 697
    sget-wide v1, Lcom/facebook/katana/util/logging/MobileEventLogger;->j:J

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;J)V

    move v5, v0

    move-wide v1, v3

    .line 704
    :goto_1
    cmp-long v6, v1, v3

    if-ltz v6, :cond_4

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4

    .line 705
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->q(Landroid/content/Context;)J

    move-result-wide v1

    .line 706
    const-wide/16 v6, -0x2

    cmp-long v6, v1, v6

    if-nez v6, :cond_3

    .line 707
    add-int/lit8 v0, v0, 0x1

    .line 708
    const/4 v6, 0x2

    if-gt v0, v6, :cond_4

    move-wide v1, v3

    .line 713
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 716
    :cond_4
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 717
    sget-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger;->h:J

    invoke-direct {p0, p1, v0, v1, v8}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;JZ)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->r(Landroid/content/Context;)V

    .line 866
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->f(Landroid/content/Context;)V

    .line 862
    new-instance v0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionEndEvent;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionEndEvent;-><init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V

    .line 863
    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 864
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->r(Landroid/content/Context;)V

    .line 865
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->n(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger;->o:Landroid/content/Context;

    .line 953
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/katana/util/logging/MobileEventLogger$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$2;-><init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V

    const-string v2, "MobileEventLogger"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 960
    return-void
.end method
