.class public Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedStoryAttachment.java"


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "description"
    .end annotation
.end field

.field public final media:Lcom/facebook/katana/api/gql/model/FeedMedia;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "media"
    .end annotation
.end field

.field public final source:Lcom/facebook/katana/api/gql/model/FeedStoryText;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "source"
    .end annotation
.end field

.field public final subattachments:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;
        }
        jsonFieldName = "subattachments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public final target:Lcom/facebook/katana/api/gql/model/FeedNode;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "target"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "title"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "url"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->title:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->url:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->description:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->source:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    .line 38
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->media:Lcom/facebook/katana/api/gql/model/FeedMedia;

    .line 39
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->target:Lcom/facebook/katana/api/gql/model/FeedNode;

    .line 40
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->subattachments:Ljava/util/List;

    .line 41
    return-void
.end method
