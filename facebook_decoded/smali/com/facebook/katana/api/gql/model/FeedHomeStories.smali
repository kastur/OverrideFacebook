.class public Lcom/facebook/katana/api/gql/model/FeedHomeStories;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedHomeStories.java"


# instance fields
.field public final count:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "count"
    .end annotation
.end field

.field public final feedStoryEdges:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedStoryEdge;
        }
        jsonFieldName = "edges"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryEdge;",
            ">;"
        }
    .end annotation
.end field

.field public final pageInfo:Lcom/facebook/katana/api/gql/model/FeedPageInfo;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "page_info"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedHomeStories;->feedStoryEdges:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedHomeStories;->count:I

    .line 23
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedHomeStories;->pageInfo:Lcom/facebook/katana/api/gql/model/FeedPageInfo;

    .line 24
    return-void
.end method
