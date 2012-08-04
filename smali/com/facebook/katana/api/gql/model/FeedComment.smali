.class public Lcom/facebook/katana/api/gql/model/FeedComment;
.super Lcom/facebook/katana/api/gql/model/FeedNode;
.source "FeedComment.java"


# instance fields
.field public final author:Lcom/facebook/katana/api/gql/model/FeedProfile;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "author"
    .end annotation
.end field

.field public final body:Lcom/facebook/katana/api/gql/model/FeedStoryText;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "body"
    .end annotation
.end field

.field public final createdTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "created_time"
    .end annotation
.end field

.field public final feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "feedback"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/api/gql/model/FeedNode;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedComment;->author:Lcom/facebook/katana/api/gql/model/FeedProfile;

    .line 23
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedComment;->body:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/api/gql/model/FeedComment;->createdTime:J

    .line 25
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedComment;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    .line 26
    return-void
.end method
