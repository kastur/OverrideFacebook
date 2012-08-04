.class Lcom/facebook/katana/service/method/FqlGetPageFanStatus$UserPageRelationship;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FqlGetPageFanStatus.java"


# instance fields
.field public final pageId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "page_id"
    .end annotation
.end field

.field public final uid:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uid"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 86
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 87
    iput-wide v0, p0, Lcom/facebook/katana/service/method/FqlGetPageFanStatus$UserPageRelationship;->uid:J

    .line 88
    iput-wide v0, p0, Lcom/facebook/katana/service/method/FqlGetPageFanStatus$UserPageRelationship;->pageId:J

    .line 89
    return-void
.end method
