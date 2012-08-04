.class Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FqlGetPhotoSet.java"


# instance fields
.field public final mPhotoFBID:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "photo_id"
    .end annotation
.end field

.field public final mSetToken:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "photoset_token"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;->mPhotoFBID:J

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;->mSetToken:Ljava/lang/String;

    .line 128
    return-void
.end method
