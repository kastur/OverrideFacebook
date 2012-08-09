.class public Lcom/facebook/katana/api/gql/model/FeedNode;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedNode.java"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedNode;->id:Ljava/lang/String;

    .line 14
    return-void
.end method
