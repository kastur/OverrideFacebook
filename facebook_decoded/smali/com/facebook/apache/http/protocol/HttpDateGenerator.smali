.class public Lcom/facebook/apache/http/protocol/HttpDateGenerator;
.super Ljava/lang/Object;
.source "HttpDateGenerator.java"


# static fields
.field private static a:Ljava/util/TimeZone;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->c:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->d:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->b:Ljava/text/DateFormat;

    .line 60
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->b:Ljava/text/DateFormat;

    sget-object v1, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->b:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->d:Ljava/lang/String;

    .line 68
    iput-wide v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->c:J

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
