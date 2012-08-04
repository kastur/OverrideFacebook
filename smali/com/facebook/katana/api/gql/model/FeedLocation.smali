.class public Lcom/facebook/katana/api/gql/model/FeedLocation;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedLocation.java"


# instance fields
.field public final latitude:D
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "latitude"
    .end annotation
.end field

.field public final longitude:D
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "longitude"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/facebook/katana/api/gql/model/FeedLocation;->latitude:D

    .line 17
    iput-wide v0, p0, Lcom/facebook/katana/api/gql/model/FeedLocation;->longitude:D

    .line 18
    return-void
.end method
