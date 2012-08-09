.class public Lcom/nineoldandroids/animation/TimeAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "TimeAnimator.java"


# instance fields
.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->h:J

    .line 67
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method final a(J)Z
    .locals 4
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->d:I

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->d:I

    .line 21
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 22
    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->b:J

    .line 29
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_1
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->b:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    goto :goto_0
.end method

.method final d()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
