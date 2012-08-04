.class public Lcom/facebook/katana/api/gql/model/FeedImage;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedImage.java"


# instance fields
.field public final height:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "height"
    .end annotation
.end field

.field public final uri:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uri"
    .end annotation
.end field

.field public final width:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "width"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedImage;->uri:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/facebook/katana/api/gql/model/FeedImage;->width:I

    .line 21
    iput v1, p0, Lcom/facebook/katana/api/gql/model/FeedImage;->height:I

    .line 22
    return-void
.end method
