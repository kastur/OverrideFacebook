.class public Lcom/facebook/katana/util/logging/PerformanceMarker;
.super Ljava/lang/Object;
.source "PerformanceMarker.java"


# static fields
.field private static e:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/katana/util/logging/PerformanceMarker;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/facebook/katana/util/logging/LoggerUtils;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide v0, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J

    .line 70
    invoke-static {p1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 71
    invoke-static {p2}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->a:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->b:Ljava/lang/String;

    .line 74
    iput-wide v0, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->c:J

    .line 75
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v2, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->b:Ljava/lang/String;

    iget-wide v5, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->c:J

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 123
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    invoke-static {p1, v0}, Lcom/facebook/katana/util/logging/PerformanceLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;)V

    .line 173
    invoke-static {}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;->b()J

    move-result-wide v0

    .line 175
    iget-wide v2, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 176
    iput-wide v0, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J

    .line 178
    :cond_0
    const-string v2, "PerfMarker"

    const-string v3, "Name: %s; Timestamp (ms): %d; Elapsed (ms): %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-wide v0, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 165
    sput-boolean p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->e:Z

    .line 166
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/katana/util/logging/PerformanceMarker;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/PerformanceMarker;->d:J

    .line 128
    sget-object v0, Lcom/facebook/katana/util/logging/MarkerType;->START:Lcom/facebook/katana/util/logging/MarkerType;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MarkerType;)V

    .line 129
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MarkerType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p2}, Lcom/facebook/katana/util/logging/MarkerType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/facebook/katana/util/logging/MarkerType;->STOP:Lcom/facebook/katana/util/logging/MarkerType;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MarkerType;)V

    .line 134
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method
