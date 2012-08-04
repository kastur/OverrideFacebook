.class Lcom/facebook/katana/service/method/FqlGetGroups$UserRelationship$GroupUserRelationship;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FqlGetGroups.java"


# instance fields
.field public final mGid:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "gid"
    .end annotation
.end field

.field public final mUnread:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "unread"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/service/method/FqlGetGroups$UserRelationship$GroupUserRelationship;->mGid:J

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/service/method/FqlGetGroups$UserRelationship$GroupUserRelationship;->mUnread:I

    .line 222
    return-void
.end method
