.class public Lcom/facebook/katana/api/gql/model/FeedStoryEdge;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedStoryEdge.java"


# instance fields
.field public final position:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "position"
    .end annotation
.end field

.field public final story:Lcom/facebook/katana/api/gql/model/FeedStory;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "node"
    .end annotation
.end field

.field public final viewTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "view_time"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryEdge;->viewTime:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryEdge;->position:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryEdge;->story:Lcom/facebook/katana/api/gql/model/FeedStory;

    .line 25
    return-void
.end method
