.class public Lcom/facebook/orca/sms/SmsFetchThreadHandler;
.super Ljava/lang/Object;
.source "SmsFetchThreadHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/sms/SmsContentResolverHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Lcom/facebook/orca/server/FetchMoreMessagesResult;
    .locals 8
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v2

    .line 88
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v4

    .line 90
    sget-object v5, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 92
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x1

    sget-object v7, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v7}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    sget-object v7, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v7}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 100
    const-string v2, "thread_id = ? AND (type = ? OR type = ?) AND date <= ?"

    .line 101
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to fetch an unknown SMS thread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, v4, v2, v6}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v5, v0, v2, v3}, Lcom/facebook/orca/server/FetchMoreMessagesResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v1
.end method

.method public final a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 38
    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v5, v4}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v5

    .line 58
    :goto_0
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()J

    move-result-wide v3

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v6

    .line 61
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 64
    const-string v7, "thread_id = ? AND (type = ? OR type = ?) AND date > ?"

    .line 65
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    sget-object v9, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v9}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x2

    sget-object v9, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v9}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, v6, v7, v8}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 74
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    return-object v0

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 49
    iget-object v4, p0, Lcom/facebook/orca/sms/SmsFetchThreadHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v5

    .line 51
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to fetch an SMS thread without a thread id or a phone number"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method
