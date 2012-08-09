.class public Lcom/facebook/katana/api/gql/FetchFeedStoryCommentsApiMethod;
.super Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;
.source "FetchFeedStoryCommentsApiMethod.java"


# instance fields
.field private f:Lcom/facebook/katana/api/gql/model/FeedStoryComments;


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/facebook/katana/api/gql/FetchFeedStoryCommentsApiMethod;->f:Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    invoke-static {}, Lcom/facebook/katana/binding/AppSessionListener;->m()V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 46
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/katana/api/gql/FetchFeedStoryCommentsApiMethod;->f:Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    .line 49
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 50
    const-class v0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->b()Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->b()Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/FetchFeedStoryCommentsApiMethod;->f:Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    .line 58
    :cond_0
    return-void
.end method
