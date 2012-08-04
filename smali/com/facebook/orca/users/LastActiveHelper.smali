.class public Lcom/facebook/orca/users/LastActiveHelper;
.super Ljava/lang/Object;
.source "LastActiveHelper.java"


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final e:Lcom/facebook/orca/cache/DataCache;

.field private final f:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private g:Lcom/facebook/orca/users/User;

.field private h:Lcom/facebook/orca/threads/ThreadParticipant;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/users/LastActiveHelper;->a:J

    .line 25
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/users/LastActiveHelper;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/users/LastActiveHelper;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 44
    iput-object p3, p0, Lcom/facebook/orca/users/LastActiveHelper;->e:Lcom/facebook/orca/cache/DataCache;

    .line 45
    iput-object p4, p0, Lcom/facebook/orca/users/LastActiveHelper;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    .line 55
    iput-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    .line 65
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/users/LastActiveHelper;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-wide v0

    .line 89
    :cond_1
    iget-wide v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 90
    iget-wide v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/LastActive;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->h:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v3, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v3}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/Long;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    .line 106
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    sub-long/2addr v2, v4

    .line 109
    iget-object v4, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-wide v4, Lcom/facebook/orca/users/LastActiveHelper;->b:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    .line 117
    :cond_5
    :goto_1
    iget-wide v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    goto :goto_0

    .line 114
    :cond_6
    sget-wide v4, Lcom/facebook/orca/users/LastActiveHelper;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 115
    iput-wide v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->g:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_0

    .line 127
    const-string v0, ""

    .line 149
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/users/LastActiveHelper;->i:J

    sub-long/2addr v0, v2

    .line 131
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 132
    div-int/lit8 v1, v0, 0x3c

    .line 133
    div-int/lit8 v2, v1, 0x3c

    .line 134
    div-int/lit8 v3, v2, 0x18

    .line 136
    if-ge v0, v6, :cond_1

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    if-ne v1, v4, :cond_2

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_one_min_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_2
    if-ge v1, v6, :cond_3

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/orca/R$string;->presence_active_x_mins_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_3
    if-ne v2, v4, :cond_4

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_one_hour_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_4
    const/16 v0, 0x18

    if-ge v2, v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_x_hours_ago:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_5
    if-ne v3, v4, :cond_6

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_one_day_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/users/LastActiveHelper;->c:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->presence_active_x_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
