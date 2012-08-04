.class public Lcom/facebook/katana/api/gql/model/FeedStoryText;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FeedStoryText.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    b = true
.end annotation


# instance fields
.field public final ranges:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedEntityRange;
        }
        jsonFieldName = "ranges"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedEntityRange;",
            ">;"
        }
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "text"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryText;->text:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStoryText;->ranges:Ljava/util/List;

    .line 23
    return-void
.end method
