.class public Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;
.super Ljava/lang/Object;
.source "MessageDeliveredReadStateDisplayUtil.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a:Lcom/facebook/orca/cache/DataCache;

    .line 35
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/Message;)J
    .locals 4
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    .line 296
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->d(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->c(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    .line 104
    if-nez v5, :cond_0

    .line 176
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    .line 111
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 112
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 113
    invoke-static {v5, v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-direct {p0, p4, v0, p5}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d()Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    move-result-object v2

    sget-object v7, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->READER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v2, v7, :cond_3

    :cond_2
    move v2, v4

    :goto_2
    const-string v7, "messageDeliveredReadInfo should be null or of type READER"

    invoke-static {v2, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 123
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 124
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, v3

    .line 119
    goto :goto_2

    .line 126
    :cond_4
    invoke-direct {p0, p4, v0, p5}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    if-nez v1, :cond_5

    move v1, v4

    :goto_3
    const-string v2, "messageDeliveredReadInfo should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 133
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 134
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    move v1, v3

    .line 130
    goto :goto_3

    .line 138
    :cond_6
    invoke-direct {p0, p4, v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->e(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d()Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    move-result-object v2

    sget-object v7, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->READER:Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    if-ne v2, v7, :cond_a

    :cond_7
    move v2, v4

    :goto_4
    const-string v7, "messageDeliveredReadInfo should be null or of type READER"

    invoke-static {v2, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 143
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 144
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 145
    if-nez v1, :cond_8

    .line 146
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a(J)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    move-result-object v1

    .line 149
    :cond_8
    new-instance v2, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v7

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v8

    invoke-direct {v2, v7, v8, v9}, Lcom/facebook/orca/threadview/RowReceiptParticipant;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a(Lcom/facebook/orca/threadview/RowReceiptParticipant;)V

    :cond_9
    move-object v0, v1

    move-object v1, v0

    .line 153
    goto/16 :goto_1

    :cond_a
    move v2, v3

    .line 139
    goto :goto_4

    .line 158
    :cond_b
    invoke-virtual {p5}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_e

    .line 159
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 163
    invoke-static {v5, v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 167
    :cond_d
    invoke-static {p4, v0, p5}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->c(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 169
    if-nez v1, :cond_c

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    move-result-object v1

    goto :goto_5

    :cond_e
    move-object v0, v1

    .line 176
    goto/16 :goto_0
.end method

.method private static b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadSummary;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadParticipant;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v0

    invoke-static {p1}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v6

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/threads/Message;

    .line 50
    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v5, p2

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    return-object v6
.end method
