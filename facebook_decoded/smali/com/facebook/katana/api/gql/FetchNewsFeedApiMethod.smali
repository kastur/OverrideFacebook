.class public Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;
.super Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;
.source "FetchNewsFeedApiMethod.java"


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field private g:Lcom/facebook/katana/api/gql/model/FeedHomeStories;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "POST"

    invoke-static {p1, p3, p4, p5}, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 94
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v7

    .line 95
    if-nez v7, :cond_0

    .line 103
    :goto_0
    return-object v6

    .line 99
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;

    const/16 v5, 0x19

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    const/16 v4, 0x3e9

    const/16 v5, 0x3fc

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->a(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->f:Ljava/lang/String;

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v1, "profile_image_size"

    sget-object v2, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "query_filter"

    invoke-static {p1, p2, p3}, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 58
    iget-object v2, p0, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->g:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    invoke-virtual {v0, p5, p6, p7, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/api/gql/model/FeedHomeStories;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 44
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 46
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 47
    const-class v0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;

    .line 49
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/katana/api/gql/FetchNewsFeedApiMethod;->g:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    .line 51
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->homeStories:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    goto :goto_0
.end method
