.class Lcom/facebook/orca/debug/TraceEvent;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# instance fields
.field private final a:Lcom/facebook/orca/debug/TraceEvent$Type;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:J


# direct methods
.method constructor <init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/debug/TraceEvent;->a:Lcom/facebook/orca/debug/TraceEvent$Type;

    .line 26
    iput-wide p2, p0, Lcom/facebook/orca/debug/TraceEvent;->b:J

    .line 27
    iput-object p4, p0, Lcom/facebook/orca/debug/TraceEvent;->c:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/facebook/orca/debug/TraceEvent;->d:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/TraceEvent;->e:J

    .line 30
    iput-wide p6, p0, Lcom/facebook/orca/debug/TraceEvent;->f:J

    .line 31
    return-void
.end method

.method static a(J)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v7, 0x3e8

    .line 125
    long-to-float v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 126
    div-long v2, v0, v7

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 127
    rem-long/2addr v0, v7

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x64

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 108
    long-to-float v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v1, v0

    .line 109
    const-string v0, ""

    .line 110
    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-string v0, "_"

    .line 111
    :cond_0
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const-string v0, "__"

    .line 112
    :cond_1
    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const-string v0, "___"

    .line 113
    :cond_2
    const-wide/16 v3, 0xa

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    const-string v0, "____"

    .line 114
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/facebook/orca/debug/TraceEvent;->b:J

    return-wide v0
.end method

.method final a(JJLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 65
    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/facebook/orca/debug/TraceEvent;->e:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/TraceEvent;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/debug/TraceEvent;->a:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v1, v2, :cond_1

    .line 73
    const-string v1, " Start         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/facebook/orca/debug/TraceEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget-wide v1, p0, Lcom/facebook/orca/debug/TraceEvent;->e:J

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/TraceEvent;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/debug/TraceEvent;->a:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/TraceEvent$Type;->STOP:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v1, v2, :cond_2

    .line 75
    const-string v1, " Done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v1, p0, Lcom/facebook/orca/debug/TraceEvent;->e:J

    iget-wide v3, p0, Lcom/facebook/orca/debug/TraceEvent;->f:J

    sub-long/2addr v1, v3

    .line 77
    invoke-static {v1, v2}, Lcom/facebook/orca/debug/TraceEvent;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 80
    :cond_2
    const-string v1, " Comment      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b()Lcom/facebook/orca/debug/TraceEvent$Type;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/debug/TraceEvent;->a:Lcom/facebook/orca/debug/TraceEvent$Type;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/debug/TraceEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/debug/TraceEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/facebook/orca/debug/TraceEvent;->e:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/orca/debug/TraceEvent;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/debug/TraceEvent;->c:Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/debug/TraceEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/debug/TraceEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
