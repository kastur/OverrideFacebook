.class public Lcom/facebook/orca/debug/ThreadTrace;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/orca/debug/ThreadTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/debug/TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/orca/debug/TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "orca:ThreadTrace"

    sput-object v0, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/facebook/orca/debug/ThreadTrace$1;

    invoke-direct {v0}, Lcom/facebook/orca/debug/ThreadTrace$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/orca/debug/ThreadTrace;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/debug/ThreadTrace;->b(J)V

    .line 57
    return-void
.end method

.method static a(J)V
    .locals 1
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/debug/ThreadTrace;->b(J)V

    .line 50
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/ThreadTrace;->b()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread trace:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/facebook/orca/debug/ThreadTrace;->a()V

    .line 67
    return-void
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:J

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->g:J

    .line 81
    return-void
.end method


# virtual methods
.method final a(JLjava/lang/Long;)J
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 137
    if-nez p3, :cond_0

    .line 138
    iget-wide v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:J

    move-wide v1, v0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/debug/TraceEvent;

    .line 144
    if-nez v6, :cond_1

    .line 145
    const-wide/16 v0, -0x1

    .line 167
    :goto_1
    return-wide v0

    .line 140
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v7

    sub-long v8, v3, v7

    .line 152
    cmp-long v0, v8, v1

    if-gez v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 156
    if-ne v0, v6, :cond_3

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_3
    move-wide v0, v8

    .line 167
    goto :goto_1

    .line 154
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 163
    :cond_4
    new-instance v0, Lcom/facebook/orca/debug/TraceEvent;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->STOP:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/ThreadTrace;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/debug/TraceEvent;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x1f4

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 98
    sget-object v1, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/lang/String;

    const-string v2, "Giant thread trace. Clearing to avoid memory leak."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    :cond_0
    if-le v0, v3, :cond_1

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    :cond_1
    new-instance v0, Lcom/facebook/orca/debug/TraceEvent;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/ThreadTrace;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/debug/TraceEvent;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/facebook/orca/debug/ThreadTrace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const-wide/16 v3, -0x1

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 206
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v10

    .line 207
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 209
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->b()Lcom/facebook/orca/debug/TraceEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/debug/TraceEvent$Type;->STOP:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v1, v2, :cond_0

    .line 210
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 212
    :cond_0
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-wide v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->g:J

    invoke-static {v10}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/debug/TraceEvent;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v3

    .line 216
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->b()Lcom/facebook/orca/debug/TraceEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v0, v1, :cond_1

    .line 218
    const-string v0, "|  "

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const-string v0, " Unstopped timers:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 226
    const-string v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    const-string v2, " ms, started at "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/TraceEvent;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 235
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
