.class public Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "GraphQueryResultEntry.java"


# instance fields
.field private final feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "feedback"
    .end annotation
.end field

.field public final homeStories:Lcom/facebook/katana/api/gql/model/FeedHomeStories;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "home_stories"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->homeStories:Lcom/facebook/katana/api/gql/model/FeedHomeStories;

    .line 22
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    .line 23
    return-void
.end method


# virtual methods
.method public final b()Lcom/facebook/katana/api/gql/model/FeedStoryComments;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->comments:Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    goto :goto_0
.end method

.method public final c()Lcom/facebook/katana/api/gql/model/FeedStoryLikers;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/GraphQueryResultEntry;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->likers:Lcom/facebook/katana/api/gql/model/FeedStoryLikers;

    goto :goto_0
.end method
