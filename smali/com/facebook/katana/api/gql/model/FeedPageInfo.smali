.class public Lcom/facebook/katana/api/gql/model/FeedPageInfo;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedPageInfo.java"


# instance fields
.field public final endCursor:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "end_cursor"
    .end annotation
.end field

.field public final hasNextPage:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "has_next_page"
    .end annotation
.end field

.field public final hasPreviousPage:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "has_previous_page"
    .end annotation
.end field

.field public final startCursor:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "start_cursor"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedPageInfo;->startCursor:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedPageInfo;->endCursor:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedPageInfo;->hasNextPage:Z

    .line 25
    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedPageInfo;->hasPreviousPage:Z

    .line 26
    return-void
.end method
