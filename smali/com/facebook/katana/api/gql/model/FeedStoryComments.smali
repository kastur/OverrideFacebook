.class public Lcom/facebook/katana/api/gql/model/FeedStoryComments;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedStoryComments.java"


# instance fields
.field public final comments:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedComment;
        }
        jsonFieldName = "nodes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedComment;",
            ">;"
        }
    .end annotation
.end field

.field public final count:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "count"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryComments;->count:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryComments;->comments:Ljava/util/List;

    .line 19
    return-void
.end method
