.class public Lcom/facebook/orca/threads/ThreadDateUtil;
.super Ljava/lang/Object;
.source "ThreadDateUtil.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/text/SimpleDateFormat;

.field private final b:Ljava/text/SimpleDateFormat;

.field private final c:Ljava/text/SimpleDateFormat;

.field private final d:Ljava/text/SimpleDateFormat;

.field private final e:Ljava/text/SimpleDateFormat;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/facebook/orca/R$string;->thread_date_short_day_of_week:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->a:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/facebook/orca/R$string;->thread_date_short:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->b:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/facebook/orca/R$string;->thread_date_full:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->c:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/facebook/orca/R$string;->message_date_no_year:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->d:Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/facebook/orca/R$string;->message_date_with_year:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->e:Ljava/text/SimpleDateFormat;

    .line 44
    return-void
.end method

.method private static d(J)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 111
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 89
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 94
    div-int/lit8 v0, v0, 0x18

    .line 95
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const/16 v2, 0xb4

    if-ge v0, v2, :cond_2

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 134
    invoke-static {p1, p2}, Lcom/facebook/orca/threads/ThreadDateUtil;->d(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sub-long/2addr v0, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x18

    .line 138
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->message_date_time_order:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->message_date_time_order:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    sget v1, Lcom/facebook/orca/R$string;->message_date_time_order:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    sub-long/2addr v0, p1

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    div-long/2addr v0, v2

    .line 160
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 162
    const-wide/16 v3, 0xb4

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->f:Landroid/content/Context;

    sget v3, Lcom/facebook/orca/R$string;->message_date_time_order:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadDateUtil;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
