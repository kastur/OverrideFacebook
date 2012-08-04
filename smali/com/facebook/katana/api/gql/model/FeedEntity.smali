.class public Lcom/facebook/katana/api/gql/model/FeedEntity;
.super Lcom/facebook/katana/api/gql/model/FeedNode;
.source "FeedEntity.java"


# instance fields
.field public final location:Lcom/facebook/katana/api/gql/model/FeedLocation;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "location"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/api/gql/model/FeedNode;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedEntity;->name:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedEntity;->location:Lcom/facebook/katana/api/gql/model/FeedLocation;

    .line 18
    return-void
.end method
