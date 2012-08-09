.class public Lcom/facebook/katana/util/TraceLogger;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/katana/util/TraceLogger$TraceLogLine;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/facebook/katana/util/TraceLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/TraceLogger;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x4000

    iput v0, p0, Lcom/facebook/katana/util/TraceLogger;->b:I

    .line 51
    const/16 v0, 0x80

    iput v0, p0, Lcom/facebook/katana/util/TraceLogger;->c:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/TraceLogger;->d:Z

    .line 53
    invoke-virtual {p0}, Lcom/facebook/katana/util/TraceLogger;->a()V

    .line 54
    return-void
.end method

.method private b()Lcom/facebook/katana/util/TraceLogger$TraceLogLine;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;

    .line 188
    iget v1, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    iget-object v2, v0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    .line 189
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    new-instance v1, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 198
    iget v0, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    .line 199
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/util/TraceLogger;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    .line 67
    :try_start_0
    iget v0, p0, Lcom/facebook/katana/util/TraceLogger;->c:I

    if-lez v0, :cond_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/facebook/katana/util/TraceLogger;->c:I

    if-le v0, v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/facebook/katana/util/TraceLogger;->b()Lcom/facebook/katana/util/TraceLogger$TraceLogLine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/katana/util/TraceLogger;->b:I

    if-lez v0, :cond_2

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/facebook/katana/util/TraceLogger;->b:I

    if-le v0, v1, :cond_1

    .line 77
    const-string p1, "overly large log entry skipped"

    .line 80
    :cond_1
    :goto_1
    iget v0, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/katana/util/TraceLogger;->b:I

    if-le v0, v1, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/facebook/katana/util/TraceLogger;->b()Lcom/facebook/katana/util/TraceLogger$TraceLogLine;

    goto :goto_1

    .line 85
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/TraceLogger;->b(Ljava/lang/String;)V

    .line 86
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/katana/util/TraceLogger;->f:I

    iget-object v4, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1e

    add-int/2addr v0, v4

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/util/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;

    .line 114
    if-eqz v1, :cond_0

    move v1, v2

    .line 119
    :goto_1
    const-string v5, "[%d] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v0, v0, Lcom/facebook/katana/util/TraceLogger$TraceLogLine;->a:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_0
    const/16 v5, 0xa

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method
