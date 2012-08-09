.class public Lcom/facebook/orca/analytics/AnalyticsEventProcessor;
.super Ljava/lang/Object;
.source "AnalyticsEventProcessor.java"


# static fields
.field public static final a:J

.field private static final b:Ljava/lang/String;

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J


# instance fields
.field private h:J

.field private i:J

.field private j:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

.field private final l:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private final m:Lcom/facebook/orca/app/MessagesDataInitLock;

.field private final n:Lcom/facebook/orca/common/util/Clock;

.field private final o:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

.field private final p:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

.field private q:Z

.field private final r:Lcom/facebook/orca/analytics/AnalyticsSession;

.field private final s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x3

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:J

    .line 21
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c:J

    .line 22
    const-wide/16 v0, 0x1

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d:J

    .line 23
    const-wide/16 v0, 0x2

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:J

    .line 25
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:J

    .line 26
    const-wide/16 v0, 0x18

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g:J

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsStorage;Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;Lcom/facebook/orca/app/MessagesDataInitLock;Lcom/facebook/orca/common/util/Clock;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsStorage;",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;",
            "Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;",
            "Lcom/facebook/orca/app/MessagesDataInitLock;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:J

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->i:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->q:Z

    .line 54
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->t:J

    .line 55
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->u:J

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->s:Ljavax/inject/Provider;

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    .line 68
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 69
    iput-object p7, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->m:Lcom/facebook/orca/app/MessagesDataInitLock;

    .line 70
    iput-object p8, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:Lcom/facebook/orca/common/util/Clock;

    .line 71
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    .line 72
    iput-object p6, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    .line 73
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-direct {v0, p2, p3, p4}, Lcom/facebook/orca/analytics/AnalyticsSession;-><init>(Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsStorage;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    .line 77
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 260
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->t:J

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 262
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g()J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-wide v2, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(J)V

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h()J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-wide v2, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d(J)V

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 237
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    const-string v0, "session_timeout"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->m:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->b()V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->g()V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->k()V

    .line 127
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xa8c0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 128
    if-eqz v0, :cond_0

    .line 130
    const-string v1, "BACKGROUND_AUTO_SET"

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 134
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->e()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(JLjava/lang/String;)V

    .line 140
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c()V

    .line 144
    const-string v1, "resume_upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->q:Z

    .line 148
    :cond_3
    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->k()V

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d()V

    .line 157
    :cond_4
    :goto_1
    const-string v1, "stop_upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->q:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->b(J)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(J)V

    goto :goto_0

    .line 152
    :cond_6
    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->j()V

    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->u:J

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 276
    return-void
.end method

.method private b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const-string v1, "maybe_truncate_batch"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 241
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 243
    sget-wide v4, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsStorage;->c()V

    .line 245
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b(J)V

    .line 247
    :cond_1
    return-void
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 297
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:J

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 299
    return-void
.end method

.method private c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->f()V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->b(J)V

    .line 191
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->q:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(J)V

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->c()V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;->a()V

    .line 257
    :cond_0
    return-void
.end method

.method private d(J)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->i:J

    .line 309
    return-void
.end method

.method private d(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 196
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(Ljava/lang/String;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 215
    return-void

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v3}, Lcom/facebook/orca/analytics/AnalyticsSession;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v4}, Lcom/facebook/orca/analytics/AnalyticsSession;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private e()J
    .locals 4

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->t:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->t:J

    .line 270
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->t:J

    return-wide v0
.end method

.method private e(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    const-string v0, "key_ui_event"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(J)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->r:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()V

    .line 225
    :cond_1
    return-void
.end method

.method private f()J
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->u:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->u:J

    .line 284
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->u:J

    return-wide v0
.end method

.method private g()J
    .locals 4

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:J

    .line 293
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:J

    return-wide v0
.end method

.method private h()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->i:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V

    const-string v2, "AnalyticsEventProcessor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method
