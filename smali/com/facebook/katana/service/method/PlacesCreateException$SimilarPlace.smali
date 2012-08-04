.class public Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "PlacesCreateException.java"


# instance fields
.field public final mId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field

.field public final mName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mId:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method
