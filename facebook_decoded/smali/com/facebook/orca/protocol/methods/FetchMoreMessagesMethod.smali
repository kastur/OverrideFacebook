.class public Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;
.super Ljava/lang/Object;
.source "FetchMoreMessagesMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchMoreMessagesParams;",
        "Lcom/facebook/orca/server/FetchMoreMessagesResult;",
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 31
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 36
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->b(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchMoreMessages"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method private a(Lcom/facebook/orca/server/FetchMoreMessagesParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchMoreMessagesResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 53
    new-instance v2, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v2, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    move-result-object v2

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    iget v3, v2, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->b:I

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 65
    :cond_0
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 70
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/orca/server/FetchMoreMessagesResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0
.end method

.method private b(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v3, "thread_id=\'%1s\' AND timestamp >= %2$d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v3, "thread_id=\'%1s\' AND timestamp >= %2$d AND timestamp <= %3$d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;->a(Lcom/facebook/orca/server/FetchMoreMessagesParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    return-object v0
.end method
