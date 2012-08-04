.class public Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:J

.field private static c:Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "ACTION_LOG"

    sput-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a:Ljava/lang/String;

    .line 134
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J

    .line 136
    new-instance v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;-><init>(B)V

    sput-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;
    .locals 1
    .parameter

    .prologue
    .line 197
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->c:Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;

    invoke-static {p0, v0}, Lcom/facebook/katana/features/LoggingConfigSettings;->a(Landroid/content/Context;Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 212
    const-class v1, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "MOBILEEVENTLOG_LAST_SCOOP"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    sput-wide p1, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit v1

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)J
    .locals 6
    .parameter

    .prologue
    .line 202
    const-class v1, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 203
    const-string v0, "MOBILEEVENTLOG_LAST_SCOOP"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J

    .line 207
    :cond_0
    sget-wide v2, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
