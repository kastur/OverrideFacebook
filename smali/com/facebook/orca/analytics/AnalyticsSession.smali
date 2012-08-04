.class Lcom/facebook/orca/analytics/AnalyticsSession;
.super Ljava/lang/Object;
.source "AnalyticsSession.java"


# instance fields
.field private final a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsStorage;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsStorage;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 26
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 27
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 36
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 144
    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 146
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 147
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->g:J

    .line 148
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 150
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 151
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 56
    return-void
.end method

.method public final a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 8
    .parameter

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    if-nez v0, :cond_0

    .line 128
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 132
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->k()V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()V

    .line 114
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->g:J

    .line 64
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->g:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    return-wide v0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 72
    return-void
.end method

.method public final g()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public final h()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-wide v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 98
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-wide v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 124
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->j()V

    .line 139
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V

    .line 140
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()V

    .line 141
    return-void
.end method
