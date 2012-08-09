.class public Lcom/facebook/katana/api/gql/model/FeedEntityRange;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedEntityRange.java"


# instance fields
.field public final entity:Lcom/facebook/katana/api/gql/model/FeedEntity;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "entity"
    .end annotation
.end field

.field public final length:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "length"
    .end annotation
.end field

.field public final offset:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "offset"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 19
    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedEntityRange;->offset:I

    .line 20
    iput v0, p0, Lcom/facebook/katana/api/gql/model/FeedEntityRange;->length:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedEntityRange;->entity:Lcom/facebook/katana/api/gql/model/FeedEntity;

    .line 22
    return-void
.end method
