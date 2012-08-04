.class public Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedPrivacyScope.java"


# instance fields
.field public final icon:Lcom/facebook/katana/api/gql/model/FeedImage;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "icon"
    .end annotation
.end field

.field public final label:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "label"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
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
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;->icon:Lcom/facebook/katana/api/gql/model/FeedImage;

    .line 20
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;->type:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;->label:Ljava/lang/String;

    .line 22
    return-void
.end method
