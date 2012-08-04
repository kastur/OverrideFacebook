.class public Lcom/facebook/katana/activity/events/EventsAdapter$Item;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a:I

    .line 131
    iput-wide v2, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->b:J

    .line 132
    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->c:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->d:Ljava/lang/String;

    .line 134
    iput-wide v2, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e:J

    .line 135
    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h:Ljava/util/List;

    .line 139
    iput-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(IIJLandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;-><init>(I)V

    .line 145
    iput p2, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    .line 146
    iput-wide p3, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e:J

    .line 147
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    invoke-static {v0, p5}, Lcom/facebook/katana/util/TimeUtils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;JJILandroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a:I

    .line 160
    iput-wide p2, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->b:J

    .line 161
    iput-object p4, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->c:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->d:Ljava/lang/String;

    .line 163
    iput-wide p6, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e:J

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_1

    .line 167
    const v0, 0x7f0b01e8

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    .line 175
    :cond_0
    :goto_0
    mul-long v0, p6, v2

    mul-long/2addr v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/TimeUtils;->a(JJ)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    .line 177
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    invoke-static {v0, p11}, Lcom/facebook/katana/util/TimeUtils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i:Ljava/lang/String;

    .line 178
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_2

    .line 169
    const v0, 0x7f0b01f1

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_2
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_3

    .line 171
    const v0, 0x7f0b01e9

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_3
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_0

    .line 173
    const v0, 0x7f0b01ef

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a:I

    return v0
.end method

.method public final a(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i:Ljava/lang/String;

    return-object v0
.end method
