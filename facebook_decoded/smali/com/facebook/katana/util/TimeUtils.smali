.class public Lcom/facebook/katana/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 251
    const-string v0, "America/Los_Angeles"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 254
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 255
    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 256
    :goto_0
    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 258
    :cond_0
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    return v0

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0
.end method

.method public static final a(IJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 241
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final a(J)I
    .locals 6
    .parameter

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/TimeUtils;->a(JJJ)I

    move-result v0

    return v0
.end method

.method public static final a(JJ)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/TimeUtils;->a(JJJ)I

    move-result v0

    return v0
.end method

.method private static a(JJJ)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 104
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 106
    sub-long v2, p2, p0

    .line 107
    cmp-long v4, p4, v5

    if-eqz v4, :cond_0

    cmp-long v4, p2, p0

    if-gtz v4, :cond_0

    cmp-long v4, p0, p4

    if-gtz v4, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 111
    :cond_0
    cmp-long v4, v2, v5

    if-gez v4, :cond_1

    .line 112
    const/4 v0, -0x1

    goto :goto_0

    .line 115
    :cond_1
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const-wide/32 v4, 0xa4cb800

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x7

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 121
    const/4 v0, 0x2

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v5

    if-lt v4, v5, :cond_4

    const-wide/32 v4, 0x240c8400

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 125
    const/4 v0, 0x3

    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v4, v1, :cond_5

    const-wide v4, 0x9fa52400L

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 132
    const/4 v0, 0x4

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static final a(IIZ)J
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3b

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    .line 58
    if-eqz p2, :cond_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 62
    new-instance v0, Ljava/util/Date;

    const/16 v4, 0x17

    move v2, p0

    move v3, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static final a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p0, -0x5

    aget-object v0, v0, v1

    .line 172
    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 155
    :pswitch_1
    const v0, 0x7f0b0384

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_2
    const v0, 0x7f0b038c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_3
    const v0, 0x7f0b038e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_4
    const v0, 0x7f0b038b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_5
    const v0, 0x7f0b038a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final a(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa01

    .line 188
    sparse-switch p1, :sswitch_data_0

    .line 217
    const v0, 0x7f0b0383

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x10018

    invoke-static {p0, p2, p3, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 190
    :sswitch_0
    const v0, 0x7f0b0389

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :sswitch_1
    invoke-static {p0, p2, p3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :sswitch_2
    const/16 v0, 0xa03

    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public static b(J)J
    .locals 4
    .parameter

    .prologue
    .line 269
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    .line 270
    const-string v2, "PST"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(J)J
    .locals 4
    .parameter

    .prologue
    .line 281
    const-string v0, "PST"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    .line 282
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
