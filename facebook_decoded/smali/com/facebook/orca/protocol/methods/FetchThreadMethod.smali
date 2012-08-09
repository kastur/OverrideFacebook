.class public Lcom/facebook/orca/protocol/methods/FetchThreadMethod;
.super Ljava/lang/Object;
.source "FetchThreadMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchThreadParams;",
        "Lcom/facebook/orca/server/FetchThreadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 34
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7
    .parameter

    .prologue
    .line 38
    const-string v3, "method/fql.multiquery"

    .line 39
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 40
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->d(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchThread"

    const-string v2, "GET"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->b(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->c(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 124
    new-instance v4, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v4, v3}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 126
    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v3, v4, v1, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    move-result-object v6

    .line 131
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/users/User;

    move-result-object v5

    .line 133
    if-nez v5, :cond_1

    .line 134
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "couldn\'t find canonical user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v5, v2

    .line 139
    :cond_1
    iget-object v3, v6, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "couldn\'t find thread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 171
    :goto_0
    return-object v0

    .line 152
    :cond_3
    iget-object v2, v6, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 153
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - multiple threads in fetchThread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_4
    iget-object v2, v6, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadSummary;

    .line 159
    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    move-result-object v4

    .line 164
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-gez v3, :cond_5

    iget v3, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->b:I

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 168
    :goto_1
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v1, v4, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 171
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    iget-object v4, v6, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 164
    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 58
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thread_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/4 v5, 0x0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thread_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thread_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 85
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "thread_id=\'%1$s\' AND timestamp > %2$d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 99
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "single_recipient=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "thread_id IN (SELECT thread_id FROM #threads)"

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    return-object v0
.end method
