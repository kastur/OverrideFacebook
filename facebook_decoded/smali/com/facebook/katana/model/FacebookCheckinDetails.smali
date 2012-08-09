.class public Lcom/facebook/katana/model/FacebookCheckinDetails;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookCheckinDetails.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field public final mAppId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "app_id"
    .end annotation
.end field

.field protected mAppInfo:Lcom/facebook/katana/model/FacebookApp;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "app_info"
        type = Lcom/facebook/katana/model/FacebookApp;
    .end annotation
.end field

.field public final mAuthorId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "author_uid"
    .end annotation
.end field

.field public final mCheckinId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "checkin_id"
    .end annotation
.end field

.field public final mPageId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "page_id"
    .end annotation
.end field

.field protected mPlaceInfo:Lcom/facebook/katana/model/FacebookPlace;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "place_info"
        type = Lcom/facebook/katana/model/FacebookPlace;
    .end annotation
.end field

.field public mTaggedUids:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/util/jsonmirror/types/JMLong;
        }
        jsonFieldName = "tagged_uids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimestamp:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "timestamp"
    .end annotation
.end field

.field public final mType:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 67
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 68
    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mCheckinId:J

    .line 69
    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAuthorId:J

    .line 70
    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPageId:J

    .line 71
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTimestamp:J

    .line 72
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTaggedUids:Ljava/util/List;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mType:Ljava/lang/String;

    .line 74
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAppId:J

    .line 75
    return-void
.end method

.method public constructor <init>(JJJJLjava/util/List;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mCheckinId:J

    .line 57
    iput-wide p3, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAuthorId:J

    .line 58
    iput-wide p5, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPageId:J

    .line 59
    iput-wide p7, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTimestamp:J

    .line 60
    iput-object p9, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTaggedUids:Ljava/util/List;

    .line 61
    iput-object p10, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mType:Ljava/lang/String;

    .line 62
    const-wide v0, 0x51a67c8e50L

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAppId:J

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookApp;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAppInfo:Lcom/facebook/katana/model/FacebookApp;

    .line 95
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPlaceInfo:Lcom/facebook/katana/model/FacebookPlace;

    .line 85
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookPlace;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mPlaceInfo:Lcom/facebook/katana/model/FacebookPlace;

    return-object v0
.end method

.method public final c()Lcom/facebook/katana/model/FacebookApp;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAppInfo:Lcom/facebook/katana/model/FacebookApp;

    return-object v0
.end method
