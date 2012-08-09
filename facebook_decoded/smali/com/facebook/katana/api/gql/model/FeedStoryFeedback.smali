.class public Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedStoryFeedback.java"


# instance fields
.field public final canViewerComment:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_viewer_comment"
    .end annotation
.end field

.field public final canViewerLike:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_viewer_like"
    .end annotation
.end field

.field public final comments:Lcom/facebook/katana/api/gql/model/FeedStoryComments;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "comments"
    .end annotation
.end field

.field public final doesViewerLike:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "does_viewer_like"
    .end annotation
.end field

.field public final legacyApiPostId:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "legacy_api_post_id"
    .end annotation
.end field

.field public final likers:Lcom/facebook/katana/api/gql/model/FeedStoryLikers;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "likers"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->canViewerLike:Z

    .line 28
    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->canViewerComment:Z

    .line 29
    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->doesViewerLike:Z

    .line 30
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->legacyApiPostId:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->comments:Lcom/facebook/katana/api/gql/model/FeedStoryComments;

    .line 32
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;->likers:Lcom/facebook/katana/api/gql/model/FeedStoryLikers;

    .line 33
    return-void
.end method
