.class public Lcom/facebook/katana/model/FacebookUserFull$Affiliation;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookUserFull.java"


# instance fields
.field public final mAffiliationName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final mStatus:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "status"
    .end annotation
.end field

.field public final mType:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mAffiliationName:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mStatus:Ljava/lang/String;

    .line 112
    return-void
.end method
