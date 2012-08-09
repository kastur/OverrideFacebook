.class public Lcom/facebook/katana/api/gql/model/FeedMedia;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedMedia.java"


# instance fields
.field public final image:Lcom/facebook/katana/api/gql/model/FeedImage;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "image"
    .end annotation
.end field

.field public final isPlayable:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "is_playable"
    .end annotation
.end field

.field public final playableUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "playable_url"
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
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedMedia;->image:Lcom/facebook/katana/api/gql/model/FeedImage;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/api/gql/model/FeedMedia;->isPlayable:Z

    .line 21
    iput-object v1, p0, Lcom/facebook/katana/api/gql/model/FeedMedia;->playableUrl:Ljava/lang/String;

    .line 22
    return-void
.end method
