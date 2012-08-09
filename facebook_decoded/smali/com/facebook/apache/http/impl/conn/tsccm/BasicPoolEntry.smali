.class public Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
.super Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final d:J

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d:J

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 97
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->f:J

    .line 101
    :goto_0
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->f:J

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->g:J

    .line 102
    return-void

    .line 99
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->f:J

    goto :goto_0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->e:J

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 154
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->e:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 158
    :goto_0
    iget-wide v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->f:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->g:J

    .line 159
    return-void

    .line 156
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->b()V

    .line 120
    return-void
.end method

.method protected final c()Lcom/facebook/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected final d()Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method
